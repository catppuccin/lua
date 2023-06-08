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

    local version="$1"

    mv catppuccin-{dev,"$version"}-1.rockspec
    sed -i "s/dev-1/$version-1/" "catppuccin-$version-1.rockspec"
    sed -i "s/@VERSION@/v$version/" "catppuccin-$version-1.rockspec"
    sed -i "s/--//" "catppuccin-$version-1.rockspec"

    luarocks upload --api-key="$LUAROCKS_API" "catppuccin-$version-1.rockspec"

    gh release create "v$version" --generate-notes
}
