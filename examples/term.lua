local cp = require("catppuccin")

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

for _, flavor in ipairs({ "latte", "frappe", "macchiato", "mocha" }) do
    print(("\x1b[1m%s\x1b[0m"):format(flavor:sub(1, 1):upper() .. flavor:sub(2)))
    for _, pallete_name in ipairs(pallete_list) do
        local r, g, b = (table.unpack or unpack)(cp[flavor]()[pallete_name].rgb)
        io.write(("\x1b[30;2m\x1b[48;2;%d;%d;%dm   \x1b[0m"):format(r, g, b))
    end
    print("\n\n")
end
