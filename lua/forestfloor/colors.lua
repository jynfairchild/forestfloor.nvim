local colors = require("forestfloor.palette")

local function select_colors()
    local selected = { none = "none" }
    -- Fallback to 'night' to ensure robustness if style is invalid
    local style = vim.g.forestfloor_config.style
    -- night_transparent uses the night palette with transparent flag
    if style == 'night_transparent' then style = 'night' end
    local palette = colors[style] or colors.night
    selected = vim.tbl_extend("force", selected, palette)
    selected = vim.tbl_extend("force", selected, vim.g.forestfloor_config.colors)
    return selected
end

return select_colors()
