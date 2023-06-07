package = "catppuccin"
version = "dev-1"

source = {
    url = "git+https://github.com/UrNightmaree/catppuccin-lua.git",
--  tag = "@VERSION@"
}

description = {
    summary = "🌚 Soothing pastel theme for Lua",
    detailed = [[

   ]],
    homepage = "https://github.com/UrNightmaree/catppuccin-lua",
    license = "MIT",
}

build = {
    type = "builtin",
    modules = {
        ["catppuccin"] = "catppuccin/init.lua",
        ["catppuccin.latte"] = "catppuccin/latte.lua",
        ["catppuccin.frappe"] = "catppuccin/frappe.lua",
        ["catppuccin.macchiato"] = "catppuccin/macchiato.lua",
        ["catppuccin.mocha"] = "catppuccin/mocha.lua",
    },
}
