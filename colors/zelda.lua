-- Zelda colorscheme for Neovim
-- A dark forest theme inspired by the Legend of Zelda

if vim.g.colors_name then
  vim.cmd.highlight('clear')
end
if vim.fn.exists('syntax_on') == 1 then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'zelda'

local hi = function(name, val)
  val.force = true
  val.cterm = val.cterm or {}
  vim.api.nvim_set_hl(0, name, val)
end

-- ============================================================
-- PALETTE
-- ============================================================
local c = {
  -- Backgrounds
  bg           = '#0d1a14',
  bg_dark      = '#0a1410',
  bg_highlight = '#1a2e24',
  bg_visual    = '#0e5135',
  bg_float     = '#0f1f18',
  bg_search    = '#1a3a2a',

  -- Foregrounds
  fg           = '#d4d4d8',
  fg_dim       = '#7a7a80',
  fg_gutter    = '#333338',

  -- Zelda palette
  comment      = '#494b4b',
  keyword      = '#0d9263',
  func         = '#0d9263',
  string       = '#4aba91',
  type         = '#d4ce46',
  constant     = '#d4ce46',
  special      = '#4aba91',

  -- Accents
  red          = '#e06060',
  orange       = '#d4a040',
  blue         = '#5898b8',
  cyan         = '#4aba91',
  purple       = '#a080c0',
  border       = '#2a2a30',
  menu_bg      = '#121e18',
  menu_sel     = '#1a3020',
}

-- ============================================================
-- EDITOR UI
-- ============================================================
hi('Normal',              { fg = c.fg, bg = c.bg })
hi('NormalFloat',         { fg = c.fg, bg = c.bg_float })
hi('FloatBorder',         { fg = c.border, bg = c.bg_float })
hi('FloatTitle',          { fg = c.type, bg = c.bg_float, bold = true })
hi('FloatFooter',         { fg = c.fg_dim, bg = c.bg_float })
hi('Cursor',              { fg = c.bg, bg = c.fg })
hi('CursorLine',          { bg = c.bg_highlight })
hi('CursorColumn',        { bg = c.bg_highlight })
hi('CursorLineNr',        { fg = c.type, bold = true })
hi('LineNr',              { fg = c.fg_gutter })
hi('LineNrAbove',         { link = 'LineNr' })
hi('LineNrBelow',         { link = 'LineNr' })
hi('ColorColumn',         { bg = c.bg_dark })
hi('SignColumn',          { fg = c.fg_gutter, bg = c.bg })
hi('FoldColumn',          { fg = c.fg_gutter, bg = c.bg })
hi('Folded',              { fg = c.fg_dim, bg = c.bg_dark })
hi('Visual',              { bg = c.bg_visual })
hi('VisualNOS',           { link = 'Visual' })
hi('Search',              { fg = c.bg, bg = c.string })
hi('IncSearch',           { fg = c.bg, bg = c.type })
hi('CurSearch',           { link = 'IncSearch' })
hi('Substitute',          { fg = c.bg, bg = c.orange })
hi('MatchParen',          { fg = c.type, bold = true })
hi('NonText',             { fg = c.fg_gutter })
hi('Whitespace',          { link = 'NonText' })
hi('EndOfBuffer',         { link = 'NonText' })
hi('SpecialKey',          { fg = c.blue })
hi('Conceal',             { fg = c.fg_dim })
hi('Title',               { fg = c.type, bold = true })
hi('Directory',           { fg = c.string })

hi('StatusLine',          { fg = c.fg, bg = c.bg_dark })
hi('StatusLineNC',        { fg = c.fg_dim, bg = c.bg_dark })
hi('TabLine',             { fg = c.fg_dim, bg = c.bg_dark })
hi('TabLineFill',         { bg = c.bg_dark })
hi('TabLineSel',          { fg = c.fg, bg = c.bg, bold = true })
hi('WinBar',              { fg = c.fg_dim, bold = true })
hi('WinBarNC',            { fg = c.fg_gutter })
hi('WinSeparator',        { fg = c.border })
hi('VertSplit',           { link = 'WinSeparator' })
hi('MsgSeparator',        { link = 'StatusLine' })

hi('Pmenu',               { fg = c.fg, bg = c.menu_bg })
hi('PmenuSel',            { fg = c.fg, bg = c.menu_sel, bold = true })
hi('PmenuSbar',           { bg = c.bg_dark })
hi('PmenuThumb',          { bg = c.fg_gutter })
hi('PmenuKind',           { link = 'Pmenu' })
hi('PmenuKindSel',        { link = 'PmenuSel' })
hi('PmenuMatch',          { fg = c.type })
hi('PmenuMatchSel',       { fg = c.type, bg = c.menu_sel, bold = true })
hi('PmenuExtra',          { link = 'Pmenu' })
hi('PmenuExtraSel',       { link = 'PmenuSel' })
hi('WildMenu',            { fg = c.bg, bg = c.type })

hi('ErrorMsg',            { fg = c.red, bold = true })
hi('WarningMsg',          { fg = c.orange, bold = true })
hi('ModeMsg',             { fg = c.fg, bold = true })
hi('MoreMsg',             { fg = c.string, bold = true })
hi('Question',            { fg = c.blue, bold = true })

hi('DiffAdd',             { bg = '#162a1e' })
hi('DiffChange',          { bg = '#1a1a2a' })
hi('DiffDelete',          { fg = c.red, bg = '#2a1616' })
hi('DiffText',            { bg = '#2a2a40', bold = true })

hi('SpellBad',            { sp = c.red, undercurl = true })
hi('SpellCap',            { sp = c.blue, undercurl = true })
hi('SpellLocal',          { sp = c.cyan, undercurl = true })
hi('SpellRare',           { sp = c.purple, undercurl = true })

hi('TermCursor',          { link = 'Cursor' })
hi('QuickFixLine',        { fg = c.string, bold = true })
hi('SnippetTabstop',      { bg = c.bg_highlight })

-- ============================================================
-- SYNTAX
-- ============================================================
hi('Comment',             { fg = c.comment, italic = true })

hi('Constant',            { fg = c.constant })
hi('String',              { fg = c.string })
hi('Character',           { fg = c.string })
hi('Number',              { fg = c.constant })
hi('Boolean',             { fg = c.constant })
hi('Float',               { fg = c.constant })

hi('Identifier',          { fg = c.fg })
hi('Function',            { fg = c.func })

hi('Statement',           { fg = c.keyword, bold = true })
hi('Conditional',         { fg = c.keyword })
hi('Repeat',              { fg = c.keyword })
hi('Label',               { fg = c.keyword })
hi('Operator',            { fg = c.special })
hi('Keyword',             { fg = c.keyword, bold = true })
hi('Exception',           { fg = c.keyword })

hi('PreProc',             { fg = c.keyword })
hi('Include',             { fg = c.keyword })
hi('Define',              { fg = c.keyword })
hi('Macro',               { fg = c.keyword })
hi('PreCondit',           { fg = c.keyword })

hi('Type',                { fg = c.type })
hi('StorageClass',        { fg = c.keyword })
hi('Structure',           { fg = c.type })
hi('Typedef',             { fg = c.type })

hi('Special',             { fg = c.special })
hi('SpecialChar',         { fg = c.special })
hi('Tag',                 { fg = c.string })
hi('Delimiter',           { fg = c.fg_dim })
hi('SpecialComment',      { fg = c.fg_dim, italic = true })
hi('Debug',               { fg = c.red })

hi('Underlined',          { fg = c.blue, underline = true })
hi('Ignore',              { fg = c.bg })
hi('Error',               { fg = c.red, bold = true })
hi('Todo',                { fg = c.type, bold = true })

hi('Added',               { fg = c.string })
hi('Changed',             { fg = c.blue })
hi('Removed',             { fg = c.red })

-- ============================================================
-- TREESITTER
-- ============================================================

-- Comments
hi('@comment',                { link = 'Comment' })
hi('@comment.documentation',  { fg = c.comment, italic = true })
hi('@comment.error',          { fg = c.red, bold = true })
hi('@comment.warning',        { fg = c.orange, bold = true })
hi('@comment.todo',           { link = 'Todo' })
hi('@comment.note',           { fg = c.cyan, bold = true })

-- Constants
hi('@constant',               { link = 'Constant' })
hi('@constant.builtin',       { fg = c.string })
hi('@constant.macro',         { link = 'Macro' })

-- Strings
hi('@string',                 { link = 'String' })
hi('@string.documentation',   { link = 'String' })
hi('@string.regexp',          { fg = c.orange })
hi('@string.escape',          { fg = c.keyword })
hi('@string.special',         { fg = c.special })
hi('@string.special.symbol',  { fg = c.type })
hi('@string.special.url',     { fg = c.blue, underline = true })
hi('@string.special.path',    { fg = c.blue })

-- Characters, Numbers, Booleans
hi('@character',              { link = 'Character' })
hi('@character.special',      { link = 'SpecialChar' })
hi('@number',                 { link = 'Number' })
hi('@number.float',           { link = 'Float' })
hi('@boolean',                { link = 'Boolean' })

-- Types
hi('@type',                   { link = 'Type' })
hi('@type.builtin',           { fg = c.type, italic = true })
hi('@type.definition',        { link = 'Typedef' })

-- Functions
hi('@function',               { link = 'Function' })
hi('@function.builtin',       { fg = c.special })
hi('@function.call',          { fg = c.func })
hi('@function.macro',         { link = 'Macro' })
hi('@function.method',        { fg = c.func })
hi('@function.method.call',   { fg = c.func })
hi('@constructor',            { fg = c.type })

-- Variables
hi('@variable',               { fg = c.fg })
hi('@variable.builtin',       { fg = c.red, italic = true })
hi('@variable.parameter',     { fg = c.orange, italic = true })
hi('@variable.parameter.builtin', { fg = c.orange, italic = true })
hi('@variable.member',        { fg = c.func })

-- Properties
hi('@property',               { fg = c.func })

-- Keywords
hi('@keyword',                { link = 'Keyword' })
hi('@keyword.coroutine',      { fg = c.keyword })
hi('@keyword.function',       { fg = c.keyword, bold = true })
hi('@keyword.operator',       { fg = c.keyword })
hi('@keyword.import',         { fg = c.keyword })
hi('@keyword.type',           { fg = c.keyword })
hi('@keyword.modifier',       { fg = c.keyword })
hi('@keyword.repeat',         { link = 'Repeat' })
hi('@keyword.return',         { fg = c.keyword, bold = true })
hi('@keyword.exception',      { link = 'Exception' })
hi('@keyword.conditional',    { link = 'Conditional' })
hi('@keyword.debug',          { link = 'Debug' })
hi('@keyword.directive',      { link = 'PreProc' })

-- Operators
hi('@operator',               { link = 'Operator' })

-- Punctuation
hi('@punctuation',            { link = 'Delimiter' })
hi('@punctuation.delimiter',  { fg = c.fg_dim })
hi('@punctuation.bracket',    { fg = c.fg_dim })
hi('@punctuation.special',    { fg = c.special })

-- Labels
hi('@label',                  { link = 'Label' })

-- Attributes
hi('@attribute',              { link = 'Macro' })
hi('@attribute.builtin',      { fg = c.special })

-- Modules
hi('@module',                 { fg = c.fg })
hi('@module.builtin',         { fg = c.special })

-- Tags (HTML)
hi('@tag',                    { fg = c.keyword })
hi('@tag.builtin',            { fg = c.keyword })
hi('@tag.attribute',          { fg = c.func })
hi('@tag.delimiter',          { fg = c.fg_dim })

-- Markup (Markdown)
hi('@markup',                 { fg = c.fg })
hi('@markup.strong',          { bold = true })
hi('@markup.italic',          { italic = true })
hi('@markup.strikethrough',   { strikethrough = true })
hi('@markup.underline',       { underline = true })
hi('@markup.heading',         { fg = c.type, bold = true })
hi('@markup.heading.1',       { fg = c.type, bold = true })
hi('@markup.heading.2',       { fg = c.string, bold = true })
hi('@markup.heading.3',       { fg = c.keyword, bold = true })
hi('@markup.heading.4',       { fg = c.func, bold = true })
hi('@markup.heading.5',       { fg = c.fg_dim, bold = true })
hi('@markup.heading.6',       { fg = c.fg_dim, bold = true })
hi('@markup.quote',           { fg = c.fg_dim, italic = true })
hi('@markup.math',            { fg = c.special })
hi('@markup.link',            { fg = c.blue, underline = true })
hi('@markup.link.label',      { fg = c.blue })
hi('@markup.link.url',        { fg = c.blue, underline = true })
hi('@markup.raw',             { fg = c.string })
hi('@markup.raw.block',       { fg = c.string })
hi('@markup.list',            { fg = c.keyword })
hi('@markup.list.checked',    { fg = c.string })
hi('@markup.list.unchecked',  { fg = c.fg_dim })

-- Diff
hi('@diff.plus',              { link = 'Added' })
hi('@diff.minus',             { link = 'Removed' })
hi('@diff.delta',             { link = 'Changed' })

-- ============================================================
-- LSP DIAGNOSTICS
-- ============================================================
hi('DiagnosticError',               { fg = c.red })
hi('DiagnosticWarn',                { fg = c.orange })
hi('DiagnosticInfo',                { fg = c.blue })
hi('DiagnosticHint',                { fg = c.special })
hi('DiagnosticOk',                  { fg = c.string })

hi('DiagnosticVirtualTextError',    { fg = c.red, bg = '#1a1414' })
hi('DiagnosticVirtualTextWarn',     { fg = c.orange, bg = '#1a1a14' })
hi('DiagnosticVirtualTextInfo',     { fg = c.blue, bg = '#141820' })
hi('DiagnosticVirtualTextHint',     { fg = c.special, bg = '#141e1a' })
hi('DiagnosticVirtualTextOk',       { fg = c.string, bg = '#141a14' })

hi('DiagnosticFloatingError',       { link = 'DiagnosticError' })
hi('DiagnosticFloatingWarn',        { link = 'DiagnosticWarn' })
hi('DiagnosticFloatingInfo',        { link = 'DiagnosticInfo' })
hi('DiagnosticFloatingHint',        { link = 'DiagnosticHint' })
hi('DiagnosticFloatingOk',          { link = 'DiagnosticOk' })

hi('DiagnosticSignError',           { link = 'DiagnosticError' })
hi('DiagnosticSignWarn',            { link = 'DiagnosticWarn' })
hi('DiagnosticSignInfo',            { link = 'DiagnosticInfo' })
hi('DiagnosticSignHint',            { link = 'DiagnosticHint' })
hi('DiagnosticSignOk',              { link = 'DiagnosticOk' })

hi('DiagnosticUnderlineError',      { sp = c.red, undercurl = true })
hi('DiagnosticUnderlineWarn',       { sp = c.orange, undercurl = true })
hi('DiagnosticUnderlineInfo',       { sp = c.blue, undercurl = true })
hi('DiagnosticUnderlineHint',       { sp = c.special, undercurl = true })
hi('DiagnosticUnderlineOk',         { sp = c.string, undercurl = true })

hi('DiagnosticDeprecated',          { sp = c.red, strikethrough = true })
hi('DiagnosticUnnecessary',         { fg = c.fg_dim })

-- LSP
hi('LspInlayHint',                  { fg = c.fg_gutter, bg = c.bg_dark, italic = true })
hi('LspReferenceText',              { bg = c.bg_highlight })
hi('LspReferenceRead',              { bg = c.bg_highlight })
hi('LspReferenceWrite',             { bg = c.bg_highlight })

-- LSP Semantic Tokens
hi('@lsp.type.class',               { link = 'Structure' })
hi('@lsp.type.comment',             { link = 'Comment' })
hi('@lsp.type.decorator',           { link = 'Function' })
hi('@lsp.type.enum',                { link = 'Structure' })
hi('@lsp.type.enumMember',          { link = 'Constant' })
hi('@lsp.type.function',            { link = 'Function' })
hi('@lsp.type.interface',           { link = 'Structure' })
hi('@lsp.type.macro',               { link = 'Macro' })
hi('@lsp.type.method',              { link = 'Function' })
hi('@lsp.type.namespace',           { link = 'Structure' })
hi('@lsp.type.parameter',           { link = 'Identifier' })
hi('@lsp.type.property',            { link = 'Identifier' })
hi('@lsp.type.struct',              { link = 'Structure' })
hi('@lsp.type.type',                { link = 'Type' })
hi('@lsp.type.typeParameter',       { link = 'Typedef' })
hi('@lsp.type.variable',            { link = 'Identifier' })

-- ============================================================
-- TERMINAL COLORS
-- ============================================================
vim.g.terminal_color_0  = c.bg_dark
vim.g.terminal_color_1  = c.red
vim.g.terminal_color_2  = c.string
vim.g.terminal_color_3  = c.type
vim.g.terminal_color_4  = c.blue
vim.g.terminal_color_5  = c.purple
vim.g.terminal_color_6  = c.cyan
vim.g.terminal_color_7  = c.fg_dim
vim.g.terminal_color_8  = c.comment
vim.g.terminal_color_9  = c.red
vim.g.terminal_color_10 = c.string
vim.g.terminal_color_11 = c.type
vim.g.terminal_color_12 = c.blue
vim.g.terminal_color_13 = c.purple
vim.g.terminal_color_14 = c.cyan
vim.g.terminal_color_15 = c.fg
