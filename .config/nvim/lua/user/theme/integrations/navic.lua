local M = {}

function M.set(col16, col30)
    local hlgroups = {
        NavicIconsConstant      = { fg = col16.color09 },
        NavicIconsFunction      = { fg = col16.color0D },
        NavicIconsIdentifier    = { fg = col16.color08 },
        NavicIconsField         = { fg = col16.color08 },
        NavicIconsVariable      = { fg = col16.color0E },
        NavicIconsSnippet       = { fg = col30.red },
        NavicIconsText          = { fg = col16.color0B },
        NavicIconsStructure     = { fg = col16.color0E },
        NavicIconsType          = { fg = col16.color0A },
        NavicIconsKeyword       = { fg = col16.color07 },
        NavicIconsMethod        = { fg = col16.color0D },
        NavicIconsConstructor   = { fg = col30.blue },
        NavicIconsFolder        = { fg = col16.color07 },
        NavicIconsModule        = { fg = col16.color0A },
        NavicIconsProperty      = { fg = col16.color08 },
        NavicIconsEnum          = { fg = col30.blue },
        NavicIconsUnit          = { fg = col16.color0E },
        NavicIconsClass         = { fg = col30.teal },
        NavicIconsFile          = { fg = col16.color07 },
        NavicIconsInterface     = { fg = col30.green },
        NavicIconsColor         = { fg = col30.white },
        NavicIconsReference     = { fg = col16.color05 },
        NavicIconsEnumMember    = { fg = col30.purple },
        NavicIconsStruct        = { fg = col16.color0E },
        NavicIconsValue         = { fg = col30.cyan },
        NavicIconsEvent         = { fg = col30.yellow },
        NavicIconsOperator      = { fg = col16.color05 },
        NavicIconsTypeParameter = { fg = col16.color08 },
        NavicIconsNamespace     = { fg = col30.teal },
        NavicIconsPackage       = { fg = col30.green },
        NavicIconsString        = { fg = col30.green },
        NavicIconsNumber        = { fg = col30.pink },
        NavicIconsBoolean       = { fg = col30.orange },
        NavicIconsArray         = { fg = col30.blue },
        NavicIconsObject        = { fg = col16.color0E },
        NavicIconsKey           = { fg = col30.red },
        NavicIconsNull          = { fg = col30.cyan },
        NavicText               = { fg = col30.light_grey },
        NavicSeparator          = { fg = col30.red },
    }

    return hlgroups
end

return M
