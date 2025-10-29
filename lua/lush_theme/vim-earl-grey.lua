--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P`Y8P' "YY8P8P88P     `Y8
--
local lush = require "lush"
local hsl = lush.hsl
local palette = {
  foreground = hsl "#45363b",
  background = hsl "#d4ccb9",
  background_alt = hsl "#c4bcaa",
  purple = hsl "#96522b",
  blue = hsl "#416978",
  teal = hsl "#416978",
  green = hsl "#858062",
  red = hsl "#bd100d",
  orange = hsl "#e9a448",
  selection = hsl "#958b83",
  gray = hsl "#5e5252",
  light_gray = hsl "#98999c",
}
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Normal { bg = palette.background, fg = palette.foreground },
    Comment { fg = palette.gray },
    EndOfBuffer { fg = Comment.fg },
    LineNr { fg = Comment.fg },
    Keyword { fg = palette.purple },
    Identifier { fg = palette.blue },
    Operator { fg = Normal.fg },
    Delimiter { fg = Identifier.fg },
    Special { fg = palette.purple },
    Number { fg = palette.teal },
    String { fg = palette.green },
    Constant { fg = palette.teal },
    Conditional { fg = palette.purple },
    Repeat { fg = palette.purple },
    Error { fg = palette.red },
    ErrorMsg { fg = palette.red },
    WarningMsg { fg = palette.orange },
    Type { fg = palette.foreground },
    Function { fg = palette.foreground },
    PreProc { fg = palette.orange },
    Statement { fg = palette.purple },
    NormalFloat { bg = palette.background_alt, fg = palette.foreground },
    DiffDelete { fg = palette.red },
    DiffAdd { fg = palette.green },
    DiffChange { fg = palette.orange },
    VertSplit { fg = palette.foreground },
    Visual { bg = palette.selection },
    Search { bg = palette.purple, fg = palette.background },
    IncSearch { bg = palette.blue, fg = palette.background },
    NonText { fg = palette.light_gray },
    SpecialKey { fg = NonText.fg },
    Directory { fg = palette.teal },
    Title { fg = palette.teal, gui = "bold" },
    htmlH2 { fg = palette.blue, gui = "bold" },
    NormalNB { bg = palette.background_alt },
    Cursor { bg = palette.foreground, fg = palette.background },
    MatchParen { bg = Visual.bg, gui = "underline" },
    CursorLine { bg = palette.background_alt },
    ColorColumn { bg = palette.background_alt },
    SignColumn { bg = palette.bg },
    CursorLineNr { bg = palette.background_alt },
    Bold { gui = "bold" },
    Underlined { gui = "underline" },
    Italic { gui = "italic" },
    Pmenu { bg = palette.background_alt },
    PmenuSel { bg = palette.selection },
    Todo { bg = palette.background_alt, fg = palette.teal },
    SpellBad { gui = "underline", fg = palette.red },
    SpellCap { gui = "underline", fg = palette.blue },
    SpellRare { gui = "underline", fg = palette.orange },
    SpellLocal { gui = "underline", fg = palette.purple },
    DiagnosticError { fg = palette.red },
    DiagnosticWarn { fg = palette.orange },
    DiagnosticHint { fg = palette.blue },
    DiagnosticInfo { fg = palette.purple },
    DiagnosticUnderlineError { gui = "underline", sp = palette.red },
    DiagnosticUnderlineWarn { gui = "underline", sp = palette.orange },
    DiagnosticUnderlineHint { gui = "underline", sp = palette.blue },
    DiagnosticUnderlineInfo { gui = "underline", sp = palette.purple },
    LspReferenceText { bg = palette.background_alt },
    LspReferenceRead { bg = palette.background_alt },
    LspReferenceWrite { bg = palette.background_alt },
  }
end)
-- return our parsed theme for extension or use else where.
return theme
