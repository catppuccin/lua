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
