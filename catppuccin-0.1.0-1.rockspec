rockspec_format = "3.0"
package = "catppuccin"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/UrNightmaree/catppuccin-lua.git",
    tag = "v0.1.0-1"
}

description = {
    summary = "🌚 Soothing pastel theme for Lua",
    detailed = [[
🌚 Soothing pastel theme for Lua

Usage:

  -- Get Mocha palette
  local palette = require("catppuccin").mocha()
  -- or
  local palette = require("catppuccin.mocha")


  -- Get the flavor name of currently used palette.
  =palette.name --> "mocha"

  -- Get Blue color from Mocha palette.
  =palette.blue --> { hex: string; rgb: { number, number, number }; hsl: { number, number, number } }

See more on https://github.com/catppuccin/lua]],
    homepage = "https://github.com/catppuccin/lua",
    license = "MIT",
}

build = {
    type = "builtin",
    modules = {
        ["catppuccin.init"] = "catppuccin/init.lua",
        ["catppuccin.latte"] = "catppuccin/latte.lua",
        ["catppuccin.frappe"] = "catppuccin/frappe.lua",
        ["catppuccin.macchiato"] = "catppuccin/macchiato.lua",
        ["catppuccin.mocha"] = "catppuccin/mocha.lua",
    },
    install = {
        lua = {
            ["catppuccin"] = "catppuccin.d.tl",
            ["catppuccin.latte"] = "catppuccin/latte.d.tl",
            ["catppuccin.frappe"] = "catppuccin/frappe.d.tl",
            ["catppuccin.macchiato"] = "catppuccin/macchiato.d.tl",
            ["catppuccin.mocha"] = "catppuccin/mocha.d.tl",
        },
    },
}
