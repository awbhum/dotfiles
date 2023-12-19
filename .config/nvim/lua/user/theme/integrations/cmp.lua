local M = {}

function M.set(col16, col30)
    local highlights = {
        CmpItemAbbr         = { fg = col30.white },
        CmpItemAbbrMatch    = { fg = col30.blue, bold = true },
        CmpDoc              = { bg = col30.darker_black },
        CmpDocBorder        = { fg = col30.darker_black, bg = col30.darker_black },
        CmpPmenu            = { bg = col30.black },
        CmpSel              = { link = "PmenuSel", bold = true },
    }

    local item_kinds = {
        CmpItemKindConstant         = { fg = col16.color09 },
        CmpItemKindFunction         = { fg = col16.color0D },
        CmpItemKindIdentifier       = { fg = col16.color08 },
        CmpItemKindField            = { fg = col16.color08 },
        CmpItemKindVariable         = { fg = col16.color0E },
        CmpItemKindSnippet          = { fg = col30.red },
        CmpItemKindText             = { fg = col16.color0B },
        CmpItemKindStructure        = { fg = col16.color0E },
        CmpItemKindType             = { fg = col16.color0A },
        CmpItemKindKeyword          = { fg = col16.color07 },
        CmpItemKindMethod           = { fg = col16.color0D },
        CmpItemKindConstructor      = { fg = col30.blue },
        CmpItemKindFolder           = { fg = col16.color07 },
        CmpItemKindModule           = { fg = col16.color0A },
        CmpItemKindProperty         = { fg = col16.color08 },
        CmpItemKindEnum             = { fg = col30.blue },
        CmpItemKindUnit             = { fg = col16.color0E },
        CmpItemKindClass            = { fg = col30.teal },
        CmpItemKindFile             = { fg = col16.color07 },
        CmpItemKindInterface        = { fg = col30.green },
        CmpItemKindColor            = { fg = col30.white },
        CmpItemKindReference        = { fg = col16.color05 },
        CmpItemKindEnumMember       = { fg = col30.purple },
        CmpItemKindStruct           = { fg = col16.color0E },
        CmpItemKindValue            = { fg = col30.cyan },
        CmpItemKindEvent            = { fg = col30.yellow },
        CmpItemKindOperator         = { fg = col16.color05 },
        CmpItemKindTypeParameter    = { fg = col16.color08 },
        CmpItemKindCopilot          = { fg = col30.green },
        CmpItemKindCodeium          = { fg = col30.vibrant_green },
        CmpItemKindTabNine          = { fg = col30.baby_pink },
    }

    local cmp_ui = vim.g.cmp_ui

    local styles = {
        default = {
            CmpBorder = { fg = col30[cmp_ui.border_color] },
        },

        atom = {
            CmpItemMenu     = { fg = col30.light_grey, italic = true },
            CmpPmenu        = { bg = col30.black2, },
            CmpDoc          = { bg = col30.darker_black },
            CmpDocBorder    = { fg = col30.darker_black, bg = col30.darker_black },
        },

        atom_colored = {
            CmpItemMenu     = { fg = col30.light_grey, italic = true },
            CmpPmenu        = { bg = col30.black2, },
            CmpDoc          = { bg = col30.darker_black },
            CmpDocBorder    = { fg = col30.darker_black, bg = col30.darker_black },
        },

        flat_light = {
            CmpPmenu        = { bg = col30.black2, },
            CmpBorder       = { fg = col30.black2, bg = col30.black2 },
            CmpDocBorder    = { fg = col30.darker_black, bg = col30.darker_black },
        },

        flat_dark = {
            CmpPmenu        = { bg = col30.darker_black, },
            CmpBorder       = { fg = col30.darker_black, bg = col30.darker_black },
            CmpDocBorder    = { fg = col30.black2, bg = col30.black2 },
            CmpDoc          = { bg = col30.black2 },
        },
    }

    local generate_color = require("user.colors").change_hex_lightness

    -- override item_kind highlights for atom style
    if cmp_ui.style == "atom" then
        for key, value in pairs(item_kinds) do
            item_kinds[key] = vim.tbl_deep_extend(
                "force",
                value,
                { bg = vim.o.bg == "dark" and generate_color(col30.black2, 6) or generate_color(col30.black2, -6) }
            )
        end
    end

    -- override item_kind highlights for atom_colored style
    if cmp_ui.style == "atom_colored" then
        for key, value in pairs(item_kinds) do
            item_kinds[key] = { fg = col30.black, bg = generate_color(value.fg, -3), bold = true }
        end
    end

    highlights = vim.tbl_deep_extend("force", highlights, styles[cmp_ui.style] or {})
    highlights = vim.tbl_deep_extend("force", highlights, item_kinds)

    if cmp_ui.selected_item_bg == "simple" then
        highlights.CmpSel = { fg = col30.white, bg = (highlights.CmpPmenu.bg == col30.black2 and col30.grey or col30.one_bg3), bold = true }
    end

    return highlights
end

return M
