local catppuccin = {}

for _, flavor in ipairs{"latte","frappe","macchiato","mocha"} do
    catppuccin[flavor] = function()
        return (require("catppuccin."..flavor)) -- prevent other return from require
    end
end

return catppuccin
