-- vim.g.tokyonight_style = 'night'
-- vim.cmd([[colorscheme tokyonight]])

local theme = {
   base00 = "#1a212e",
   base01 = "#1e2532",
   base02 = "#21283b",
   base03 = "#4f5f7e",
   base04 = "#596988",
   base05 = "#9ae3e1",
   base06 = "#6c7d9c",
   base07 = "#c8ccd4",
   base08 = "#f65866",
   base09 = "#ea8912",
   base0A = "#ebc275",
   base0B = "#8bcd5b",
   base0C = "#52a0e0",
   base0D = "#41a7fc",
   base0E = "#c678dd",
   base0F = "#f65866",
}

local colors = {
   white = "#9ae3e1",
   darker_black = "#141b28",
   black = "#1a212e", --  nvim bg
   black2 = "#202734",
   one_bg = "#242b38", -- real bg of onedark
   one_bg2 = "#2d3441",
   one_bg3 = "#353c49",
   grey = "#455574",
   grey_fg = "#4f5f7e",
   grey_fg2 = "#596988",
   light_grey = "#617190",
   red = "#f65866",
   baby_pink = "#e06c75",
   pink = "#ff75a0",
   line = "#29303d", -- for lines like vertsplit
   green = "#8bcd5b",
   vibrant_green = "#98c379",
   nord_blue = "#52a0e0",
   blue = "#41a7fc",
   yellow = "#ebc275",
   sun = "#e5c07b",
   purple = "#c678dd",
   dark_purple = "#c678dd",
   teal = "#34bfd0",
   orange = "#ea8912",
   cyan = "#56b6c2",
   statusline_bg = "#1e2532",
   lightbg = "#2f333b",
   lightbg2 = "#292d35",
   pmenu_bg = "#98c379",
   folder_bg = "#41a7fc",
}

   
local function highlight(group, guifg, guibg, attr, guisp)
   local parts = { group }
   if guifg then
      table.insert(parts, "guifg=" .. guifg)
   end
   if guibg then
      table.insert(parts, "guibg=" .. guibg)
   end
   if attr then
      table.insert(parts, "gui=" .. attr)
   end
   if guisp then
      table.insert(parts, "guisp=" .. guisp)
   end

   -- nvim.ex.highlight(parts)
   vim.api.nvim_command("highlight " .. table.concat(parts, " "))
end

local function fg(group, col)
  vim.cmd("hi " .. group .. " guifg=" .. col)
end

local function bg(group, col)
  vim.cmd("hi " .. group .. " guibg=" .. col)
end

local function fg_bg(group, fgcol, bgcol)
  vim.cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

local function apply_base16_theme()
   -- Neovim terminal colours
  vim.g.terminal_color_0 = theme.base00
  vim.g.terminal_color_1 = theme.base08
  vim.g.terminal_color_2 = theme.base0B
  vim.g.terminal_color_3 = theme.base0A
  vim.g.terminal_color_4 = theme.base0D
  vim.g.terminal_color_5 = theme.base0E
  vim.g.terminal_color_6 = theme.base0C
  vim.g.terminal_color_7 = theme.base05
  vim.g.terminal_color_8 = theme.base03
  vim.g.terminal_color_9 = theme.base08
  vim.g.terminal_color_10 = theme.base07
  vim.g.terminal_color_background = theme.base0B

   -- TODO
   -- nvim.command "hi clear"
   -- nvim.command "syntax reset"

   -- Vim editor colors
   highlight("Normal", theme.base05, theme.base00, nil, nil)
   highlight("Bold", nil, nil, "bold", nil)
   highlight("Debug", theme.base08, nil, nil, nil)
   highlight("Directory", theme.base0D, nil, nil, nil)
   highlight("Error", theme.base00, theme.base08, nil, nil)
   highlight("ErrorMsg", theme.base08, theme.base00, nil, nil)
   highlight("Exception", theme.base08, nil, nil, nil)
   highlight("FoldColumn", theme.base0C, theme.base01, nil, nil)
   highlight("Folded", theme.base03, theme.base01, nil, nil)
   highlight("IncSearch", theme.base01, theme.base09, "none", nil)
   highlight("Italic", nil, nil, "none", nil)
   highlight("Macro", theme.base08, nil, nil, nil)
   highlight("MatchParen", nil, theme.base03, nil, nil)
   highlight("ModeMsg", theme.base0B, nil, nil, nil)
   highlight("MoreMsg", theme.base0B, nil, nil, nil)
   highlight("Question", theme.base0D, nil, nil, nil)
   highlight("Search", theme.base01, theme.base0A, nil, nil)
   highlight("Substitute", theme.base01, theme.base0A, "none", nil)
   highlight("SpecialKey", theme.base03, nil, nil, nil)
   highlight("TooLong", theme.base08, nil, nil, nil)
   highlight("Underlined", theme.base08, nil, nil, nil)
   highlight("Visual", nil, theme.base02, nil, nil)
   highlight("VisualNOS", theme.base08, nil, nil, nil)
   highlight("WarningMsg", theme.base08, nil, nil, nil)
   highlight("WildMenu", theme.base08, theme.base0A, nil, nil)
   highlight("Title", theme.base0D, nil, "none", nil)
   highlight("Conceal", theme.base0D, theme.base00, nil, nil)
   highlight("Cursor", theme.base00, theme.base05, nil, nil)
   highlight("NonText", theme.base03, nil, nil, nil)
   highlight("LineNr", theme.base03, "NONE", nil, nil)
   highlight("SignColumn", theme.base03, "NONE", nil, nil)
   highlight("StatusLine", theme.base04, "NONE", "none", nil)
   highlight("StatusLineNC", theme.base03, "NONE", "none", nil)
   highlight("VertSplit", theme.base02, "NONE", "none", nil)
   highlight("ColorColumn", nil, theme.base01, "none", nil)
   highlight("CursorColumn", nil, theme.base01, "none", nil)
   highlight("CursorLine", nil, theme.base01, "none", nil)
   highlight("CursorLineNr", theme.base04, "NONE", nil, nil)
   highlight("QuickFixLine", nil, theme.base01, "none", nil)
   highlight("PMenu", theme.base05, theme.base01, "none", nil)
   highlight("PMenuSel", theme.base01, theme.base05, nil, nil)
   highlight("TabLine", theme.base03, theme.base01, "none", nil)
   highlight("TabLineFill", theme.base03, theme.base01, "none", nil)
   highlight("TabLineSel", theme.base0B, theme.base01, "none", nil)

   -- Standard syntax highlighting
   highlight("Boolean", theme.base09, nil, nil, nil)
   highlight("Character", theme.base08, nil, nil, nil)
   highlight("Comment", theme.base03, nil, nil, nil)
   highlight("Conditional", theme.base0E, nil, nil, nil)
   highlight("Constant", theme.base09, nil, nil, nil)
   highlight("Define", theme.base0E, nil, "none", nil)
   highlight("Delimiter", theme.base0F, nil, nil, nil)
   highlight("Float", theme.base09, nil, nil, nil)
   highlight("Function", theme.base0D, nil, nil, nil)
   highlight("Identifier", theme.base08, nil, "none", nil)
   highlight("Include", theme.base0D, nil, nil, nil)
   highlight("Keyword", theme.base0E, nil, nil, nil)
   highlight("Label", theme.base0A, nil, nil, nil)
   highlight("Number", theme.base09, nil, nil, nil)
   highlight("Operator", theme.base05, nil, "none", nil)
   highlight("PreProc", theme.base0A, nil, nil, nil)
   highlight("Repeat", theme.base0A, nil, nil, nil)
   highlight("Special", theme.base0C, nil, nil, nil)
   highlight("SpecialChar", theme.base0F, nil, nil, nil)
   highlight("Statement", theme.base08, nil, nil, nil)
   highlight("StorageClass", theme.base0A, nil, nil, nil)
   highlight("String", theme.base0B, nil, nil, nil)
   highlight("Structure", theme.base0E, nil, nil, nil)
   highlight("Tag", theme.base0A, nil, nil, nil)
   highlight("Todo", theme.base0A, theme.base01, nil, nil)
   highlight("Type", theme.base0A, nil, "none", nil)
   highlight("Typedef", theme.base0A, nil, nil, nil)

   -- Diff highlighting
   highlight("DiffAdd", theme.base0B, theme.base01, nil, nil)
   highlight("DiffChange", theme.base03, theme.base01, nil, nil)
   highlight("DiffDelete", theme.base08, theme.base01, nil, nil)
   highlight("DiffText", theme.base0D, theme.base01, nil, nil)
   highlight("DiffAdded", theme.base0B, theme.base00, nil, nil)
   highlight("DiffFile", theme.base08, theme.base00, nil, nil)
   highlight("DiffNewFile", theme.base0B, theme.base00, nil, nil)
   highlight("DiffLine", theme.base0D, theme.base00, nil, nil)
   highlight("DiffRemoved", theme.base08, theme.base00, nil, nil)

   -- Git highlighting
   highlight("gitcommitOverflow", theme.base08, nil, nil, nil)
   highlight("gitcommitSummary", theme.base0B, nil, nil, nil)
   highlight("gitcommitComment", theme.base03, nil, nil, nil)
   highlight("gitcommitUntracked", theme.base03, nil, nil, nil)
   highlight("gitcommitDiscarded", theme.base03, nil, nil, nil)
   highlight("gitcommitSelected", theme.base03, nil, nil, nil)
   highlight("gitcommitHeader", theme.base0E, nil, nil, nil)
   highlight("gitcommitSelectedType", theme.base0D, nil, nil, nil)
   highlight("gitcommitUnmergedType", theme.base0D, nil, nil, nil)
   highlight("gitcommitDiscardedType", theme.base0D, nil, nil, nil)
   highlight("gitcommitBranch", theme.base09, nil, "bold", nil)
   highlight("gitcommitUntrackedFile", theme.base0A, nil, nil, nil)
   highlight("gitcommitUnmergedFile", theme.base08, nil, "bold", nil)
   highlight("gitcommitDiscardedFile", theme.base08, nil, "bold", nil)
   highlight("gitcommitSelectedFile", theme.base0B, nil, "bold", nil)

   -- Mail highlighting
   highlight("mailQuoted1", theme.base0A, nil, nil, nil)
   highlight("mailQuoted2", theme.base0B, nil, nil, nil)
   highlight("mailQuoted3", theme.base0E, nil, nil, nil)
   highlight("mailQuoted4", theme.base0C, nil, nil, nil)
   highlight("mailQuoted5", theme.base0D, nil, nil, nil)
   highlight("mailQuoted6", theme.base0A, nil, nil, nil)
   highlight("mailURL", theme.base0D, nil, nil, nil)
   highlight("mailEmail", theme.base0D, nil, nil, nil)

   -- Spelling highlighting
   highlight("SpellBad", nil, nil, "undercurl", theme.base08)
   highlight("SpellLocal", nil, nil, "undercurl", theme.base0C)
   highlight("SpellCap", nil, nil, "undercurl", theme.base0D)
   highlight("SpellRare", nil, nil, "undercurl", theme.base0E)

    fg("Comment", colors.grey_fg .. " gui=italic")
    -- Disable cusror line
    vim.cmd "hi clear CursorLine"
    -- Line number
    fg("cursorlinenr", colors.white)

    -- same it bg, so it doesn't appear
    fg("EndOfBuffer", colors.black)

    -- For floating windows
    fg("FloatBorder", colors.blue)
    bg("NormalFloat", colors.darker_black)

    -- Pmenu
    bg("Pmenu", colors.one_bg)
    bg("PmenuSbar", colors.one_bg2)
    bg("PmenuSel", colors.pmenu_bg)
    bg("PmenuThumb", colors.nord_blue)
    fg("CmpItemAbbr", colors.white)
    fg("CmpItemAbbrMatch", colors.white)
    fg("CmpItemKind", colors.white)
    fg("CmpItemMenu", colors.white)

    -- misc

    -- inactive statuslines as thin lines
    fg("StatusLineNC", colors.one_bg3 .. " gui=underline")

    fg("LineNr", colors.grey)
    fg("NvimInternalError", colors.red)
    fg("VertSplit", colors.one_bg2)
    -- Dashboard
    fg("DashboardCenter", colors.grey_fg)
    fg("DashboardFooter", colors.grey_fg)
    fg("DashboardHeader", colors.grey_fg)
    fg("DashboardShortcut", colors.grey_fg)

    -- Git signs
    fg_bg("DiffAdd", colors.blue, "NONE")
    fg_bg("DiffChange", colors.grey_fg, "NONE")
    fg_bg("DiffChangeDelete", colors.red, "NONE")
    fg_bg("DiffModified", colors.red, "NONE")
    fg_bg("DiffDelete", colors.red, "NONE")

    -- Indent blankline plugin
    fg("IndentBlanklineChar", colors.line)

    -- Lsp diagnostics

    fg("DiagnosticHint", colors.purple)
    fg("DiagnosticError", colors.red)
    fg("DiagnosticWarn", colors.yellow)
    fg("DiagnosticInformation", colors.green)

    -- NvimTree
    fg("NvimTreeEmptyFolderName", colors.folder_bg)
    fg("NvimTreeEndOfBuffer", colors.darker_black)
    fg("NvimTreeFolderIcon", colors.folder_bg)
    fg("NvimTreeFolderName", colors.folder_bg)
    fg("NvimTreeGitDirty", colors.red)
    fg("NvimTreeIndentMarker", colors.one_bg2)
    bg("NvimTreeNormal", colors.darker_black)
    bg("NvimTreeNormalNC", colors.darker_black)
    fg("NvimTreeOpenedFolderName", colors.folder_bg)
    fg("NvimTreeRootFolder", colors.red .. " gui=underline") -- enable underline for root folder in nvim tree
    fg_bg("NvimTreeStatuslineNc", colors.darker_black, colors.darker_black)
    fg("NvimTreeVertSplit", colors.darker_black)
    bg("NvimTreeVertSplit", colors.darker_black)
    fg_bg("NvimTreeWindowPicker", colors.red, colors.black2)

    -- Telescope
    fg_bg("TelescopeBorder", colors.darker_black, colors.darker_black)
    fg_bg("TelescopePromptBorder", colors.black2, colors.black2)

    fg_bg("TelescopePromptNormal", colors.white, colors.black2)
    fg_bg("TelescopePromptPrefix", colors.red, colors.black2)

    bg("TelescopeNormal", colors.darker_black)

    fg_bg("TelescopePreviewTitle", colors.black, colors.green)
    fg_bg("TelescopePromptTitle", colors.black, colors.red)
    fg_bg("TelescopeResultsTitle", colors.darker_black, colors.darker_black)

    bg("TelescopeSelection", colors.black2)

    -- keybinds cheatsheet

    fg_bg("CheatsheetBorder", colors.black, colors.black)
    bg("CheatsheetSectionContent", colors.black)
    fg("CheatsheetHeading", colors.white)
end

apply_base16_theme()
