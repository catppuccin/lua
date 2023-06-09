local json = require("cjson")

local pallete_list = {
    "rosewater",
    "flamingo",
    "pink",
    "mauve",
    "red",
    "maroon",
    "peach",
    "yellow",
    "green",
    "teal",
    "sky",
    "sapphire",
    "blue",
    "lavender",
    "text",
    "subtext1",
    "subtext0",
    "overlay2",
    "overlay1",
    "overlay0",
    "surface2",
    "surface1",
    "surface0",
    "base",
    "mantle",
    "crust",
}

local flavors_file = {
    latte = io.open("catppuccin/latte.lua", "w+"),
    frappe = io.open("catppuccin/frappe.lua", "w+"),
    macchiato = io.open("catppuccin/macchiato.lua", "w+"),
    mocha = io.open("catppuccin/mocha.lua", "w+"),
}

local f_json = assert(io.open("palette-porcelain.json") or io.open("assets/palette-porcelain.json"))
local pallete = json.decode(f_json:read("a"))
f_json:close()

for flavor, f in pairs(flavors_file) do
    f:write("return {\n")
    f:write(("    name = \"%s\",\n"):format(flavor))
    for _, pallete_name in ipairs(pallete_list) do
        local v = pallete[flavor][pallete_name]
        local r, g, b = (table.unpack or unpack)(v.rgb)
        local h, s, l = (table.unpack or unpack)(v.hsl)
        f:write(([[    %s = {
        hex = "#%s",
        rgb = { %d, %d, %d },
        hsl = { %d, %.2f, %.2f },
    },
]]):format(pallete_name, v.hex, r, g, b, h, s, l))
    end
    f:write("}")
    f:close()
end
