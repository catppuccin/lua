#!/usr/bin/env bash

bake.assert_cmds() {
    for cmd in "$@"; do
        bake.assert_cmd "$cmd"
    done
}

task.lint() {
    bake.assert_cmds stylua luacheck

    stylua --color always -c catppuccin/ || {
        stylua catppuccin/
        echo
    }
    luacheck catppuccin/
}

task.release() {
    bake.assert_cmds gh luarocks

    local ver="$1"
    local rev="${2:-1}"
    local version="$ver-$rev"

    mv catppuccin-{dev-1,"$version"}.rockspec
    sed -i "s/dev-1/$version-1/" "catppuccin-$version.rockspec"
    sed -i "s/@VERSION@/v$version/" "catppuccin-$version.rockspec"
    sed -i "s/--//" "catppuccin-$version.rockspec"

    luarocks show lua-cjson >/dev/null 2>&1 ||
        luarocks install lua-cjson
    luarocks upload --api-key="$LUAROCKS_API" "catppuccin-$version.rockspec"

    gh release create "v$version" --generate-notes
}
