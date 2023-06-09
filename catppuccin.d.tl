local record Palette
    hex: string
    rgb: {number}
    hsl: {number}
end

local record Flavor
    name: string
    rosewater: Palette
    flamingo: Palette
    pink: Palette
    mauve: Palette
    red: Palette
    maroon: Palette
    peach: Palette
    yellow: Palette
    green: Palette
    teal: Palette
    sky: Palette
    sapphire: Palette
    blue: Palette
    lavender: Palette
    text: Palette
    subtext1: Palette
    subtext0: Palette
    overlay2: Palette
    overlay1: Palette
    overlay0: Palette
    surface2: Palette
    surface1: Palette
    surface0: Palette
    base: Palette
    mantle: Palette
    crust: Palette
end

local record catppuccin
    Flavor: Flavor
    latte: function(): Flavor
    frappe: function(): Flavor
    macchiato: function(): Flavor
    mocha: function(): Flavor
end

return catppuccin
