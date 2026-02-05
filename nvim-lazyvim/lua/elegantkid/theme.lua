-- ElegantKid Theme - Highlight Groups
-- Comprehensive highlight definitions for Neovim

local M = {}

function M.get(palette, config)
  local c = palette
  local transparent = config.transparent

  -- Helper for optional transparency
  local function bg(color)
    return transparent and c.none or color
  end

  return {
    -- Editor
    Normal = { fg = c.fg, bg = bg(c.bg) },
    NormalNC = { fg = c.fg_dark, bg = bg(c.bg) },
    NormalFloat = { fg = c.fg, bg = bg(c.bg_light) },
    Cursor = { fg = c.bg, bg = c.coral },
    CursorLine = { bg = c.bg_light },
    CursorColumn = { link = "CursorLine" },
    LineNr = { fg = c.teal_dark },
    CursorLineNr = { fg = c.coral, bold = true },
    SignColumn = { bg = bg(c.bg) },
    ColorColumn = { bg = c.bg_light },
    VertSplit = { fg = c.teal, bg = bg(c.bg) },
    WinSeparator = { link = "VertSplit" },
    StatusLine = { fg = c.fg, bg = c.bg_light },
    StatusLineNC = { fg = c.fg_darker, bg = c.bg_light },
    TabLine = { fg = c.fg_dark, bg = c.bg_light },
    TabLineFill = { bg = c.bg_light },
    TabLineSel = { fg = c.fg, bg = c.teal, bold = true },

    -- Search
    Search = { fg = c.bg, bg = c.cream },
    IncSearch = { fg = c.bg, bg = c.coral },
    CurSearch = { link = "IncSearch" },
    Substitute = { fg = c.bg, bg = c.coral },

    -- Selection
    Visual = { bg = c.teal_dark },
    VisualNOS = { link = "Visual" },

    -- Messages
    ErrorMsg = { fg = c.coral, bold = true },
    WarningMsg = { fg = c.orange, bold = true },
    MoreMsg = { fg = c.turquoise },
    Question = { fg = c.turquoise },

    -- Pmenu (completion)
    Pmenu = { fg = c.fg, bg = c.bg_light },
    PmenuSel = { fg = c.bg, bg = c.teal },
    PmenuSbar = { bg = c.bg_lighter },
    PmenuThumb = { bg = c.teal },

    -- Floating windows
    FloatBorder = { fg = c.teal, bg = bg(c.bg_light) },
    FloatTitle = { fg = c.cream, bg = c.teal, bold = true },

    -- Spelling
    SpellBad = { undercurl = true, sp = c.coral },
    SpellCap = { undercurl = true, sp = c.teal },
    SpellLocal = { undercurl = true, sp = c.turquoise },
    SpellRare = { undercurl = true, sp = c.magenta },

    -- Syntax
    Comment = { fg = c.teal, italic = true },
    Constant = { fg = c.turquoise },
    String = { fg = c.cream },
    Character = { link = "String" },
    Number = { fg = c.coral },
    Boolean = { fg = c.coral, bold = true },
    Float = { link = "Number" },

    Identifier = { fg = c.fg },
    Function = { fg = c.turquoise, bold = true },

    Statement = { fg = c.teal, bold = true },
    Conditional = { link = "Statement" },
    Repeat = { link = "Statement" },
    Label = { fg = c.coral },
    Operator = { fg = c.coral },
    Keyword = { fg = c.teal, bold = true },
    Exception = { fg = c.coral, bold = true },

    PreProc = { fg = c.magenta },
    Include = { link = "PreProc" },
    Define = { link = "PreProc" },
    Macro = { link = "PreProc" },
    PreCondit = { link = "PreProc" },

    Type = { fg = c.teal_light },
    StorageClass = { link = "Type" },
    Structure = { link = "Type" },
    Typedef = { link = "Type" },

    Special = { fg = c.orange },
    SpecialChar = { link = "Special" },
    Tag = { fg = c.turquoise },
    Delimiter = { fg = c.fg_dark },
    SpecialComment = { fg = c.teal, bold = true },
    Debug = { fg = c.coral },

    Underlined = { underline = true },
    Ignore = { fg = c.bg_lighter },
    Error = { fg = c.coral, bold = true },
    Todo = { fg = c.bg, bg = c.cream, bold = true },

    -- Diffs
    DiffAdd = { fg = c.turquoise, bg = c.bg },
    DiffChange = { fg = c.cream, bg = c.bg },
    DiffDelete = { fg = c.coral, bg = c.bg },
    DiffText = { fg = c.teal, bg = c.bg, bold = true },

    Added = { fg = c.turquoise },
    Changed = { fg = c.cream },
    Removed = { fg = c.coral },

    -- Diagnostics (LSP)
    DiagnosticError = { fg = c.coral },
    DiagnosticWarn = { fg = c.orange },
    DiagnosticInfo = { fg = c.teal },
    DiagnosticHint = { fg = c.turquoise },
    DiagnosticOk = { fg = c.turquoise },

    DiagnosticUnderlineError = { undercurl = true, sp = c.coral },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.orange },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.teal },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.turquoise },
    DiagnosticUnderlineOk = { undercurl = true, sp = c.turquoise },

    DiagnosticVirtualTextError = { fg = c.coral, bg = c.bg_light },
    DiagnosticVirtualTextWarn = { fg = c.orange, bg = c.bg_light },
    DiagnosticVirtualTextInfo = { fg = c.teal, bg = c.bg_light },
    DiagnosticVirtualTextHint = { fg = c.turquoise, bg = c.bg_light },

    DiagnosticSignError = { fg = c.coral },
    DiagnosticSignWarn = { fg = c.orange },
    DiagnosticSignInfo = { fg = c.teal },
    DiagnosticSignHint = { fg = c.turquoise },

    -- LSP
    LspReferenceText = { bg = c.bg_lighter },
    LspReferenceRead = { bg = c.bg_lighter },
    LspReferenceWrite = { bg = c.bg_lighter },

    -- Tree-sitter (modern 2025 groups)
    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.coral },
    ["@variable.parameter"] = { fg = c.orange },
    ["@variable.member"] = { fg = c.fg },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = c.coral, bold = true },
    ["@constant.macro"] = { link = "Macro" },

    ["@module"] = { fg = c.teal_light },
    ["@module.builtin"] = { fg = c.teal },

    ["@label"] = { link = "Label" },

    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = c.cream, italic = true },
    ["@string.regexp"] = { fg = c.orange },
    ["@string.escape"] = { fg = c.coral },
    ["@string.special"] = { link = "Special" },
    ["@string.special.symbol"] = { fg = c.turquoise },
    ["@string.special.path"] = { fg = c.turquoise, underline = true },
    ["@string.special.url"] = { fg = c.turquoise, underline = true },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = c.teal_light, italic = true },
    ["@type.definition"] = { fg = c.teal },

    ["@attribute"] = { fg = c.magenta },
    ["@attribute.builtin"] = { fg = c.magenta, italic = true },
    ["@property"] = { fg = c.turquoise },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = c.turquoise, italic = true },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },

    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },

    ["@constructor"] = { fg = c.teal_light },
    ["@operator"] = { link = "Operator" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = { fg = c.coral },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.type"] = { link = "Keyword" },
    ["@keyword.modifier"] = { link = "Keyword" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { fg = c.coral, bold = true },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "Conditional" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "Define" },

    ["@punctuation.delimiter"] = { fg = c.fg_dark },
    ["@punctuation.bracket"] = { fg = c.teal },
    ["@punctuation.special"] = { fg = c.coral },

    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { fg = c.teal, italic = true },

    ["@comment.error"] = { fg = c.coral, bold = true },
    ["@comment.warning"] = { fg = c.orange, bold = true },
    ["@comment.todo"] = { fg = c.bg, bg = c.cream, bold = true },
    ["@comment.note"] = { fg = c.bg, bg = c.turquoise, bold = true },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = c.teal, bold = true },
    ["@markup.heading.1"] = { fg = c.coral, bold = true },
    ["@markup.heading.2"] = { fg = c.orange, bold = true },
    ["@markup.heading.3"] = { fg = c.teal, bold = true },
    ["@markup.heading.4"] = { fg = c.turquoise, bold = true },
    ["@markup.heading.5"] = { fg = c.cream, bold = true },
    ["@markup.heading.6"] = { fg = c.fg, bold = true },
    ["@markup.quote"] = { fg = c.cream, italic = true },
    ["@markup.math"] = { fg = c.teal },
    ["@markup.environment"] = { fg = c.magenta },
    ["@markup.environment.name"] = { fg = c.magenta, bold = true },
    ["@markup.link"] = { fg = c.turquoise, underline = true },
    ["@markup.link.label"] = { fg = c.turquoise, italic = true },
    ["@markup.link.url"] = { fg = c.turquoise, underline = true },
    ["@markup.raw"] = { fg = c.cream },
    ["@markup.raw.block"] = { fg = c.cream, bg = c.bg_light },
    ["@markup.list"] = { fg = c.coral },
    ["@markup.list.checked"] = { fg = c.turquoise },
    ["@markup.list.unchecked"] = { fg = c.coral },

    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },

    ["@tag"] = { link = "Tag" },
    ["@tag.builtin"] = { fg = c.turquoise, italic = true },
    ["@tag.attribute"] = { fg = c.orange },
    ["@tag.delimiter"] = { fg = c.teal },

    -- LSP Semantic Tokens (modern 2025)
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.event"] = { link = "@type" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.modifier"] = { link = "@keyword.modifier" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.regexp"] = { link = "@string.regexp" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type.definition" },
    ["@lsp.type.variable"] = { link = "@variable" },

    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.readonly"] = { link = "@constant" },
    ["@lsp.mod.typeHint"] = { link = "@type" },
    ["@lsp.mod.builtin"] = { italic = true },

    -- Plugins

    -- Gitsigns
    GitSignsAdd = { fg = c.turquoise },
    GitSignsChange = { fg = c.cream },
    GitSignsDelete = { fg = c.coral },
    GitSignsAddNr = { fg = c.turquoise },
    GitSignsChangeNr = { fg = c.cream },
    GitSignsDeleteNr = { fg = c.coral },
    GitSignsAddLn = { bg = c.bg_light },
    GitSignsChangeLn = { bg = c.bg_light },
    GitSignsDeleteLn = { bg = c.bg_light },
    GitSignsCurrentLineBlame = { fg = c.teal_dark, italic = true },

    -- Telescope
    TelescopeNormal = { fg = c.fg, bg = bg(c.bg) },
    TelescopeBorder = { fg = c.teal, bg = bg(c.bg) },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_light },
    TelescopePromptBorder = { fg = c.coral, bg = c.bg_light },
    TelescopePromptTitle = { fg = c.bg, bg = c.coral, bold = true },
    TelescopePreviewTitle = { fg = c.bg, bg = c.turquoise, bold = true },
    TelescopeResultsTitle = { fg = c.bg, bg = c.teal, bold = true },
    TelescopeSelection = { fg = c.fg, bg = c.teal_dark, bold = true },
    TelescopeSelectionCaret = { fg = c.coral },
    TelescopeMatching = { fg = c.coral, bold = true },

    -- nvim-cmp
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.fg_darker, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.coral, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.coral, bold = true },
    CmpItemMenu = { fg = c.teal },
    CmpItemKindText = { fg = c.fg },
    CmpItemKindMethod = { fg = c.turquoise },
    CmpItemKindFunction = { fg = c.turquoise },
    CmpItemKindConstructor = { fg = c.teal_light },
    CmpItemKindField = { fg = c.turquoise },
    CmpItemKindVariable = { fg = c.fg },
    CmpItemKindClass = { fg = c.teal_light },
    CmpItemKindInterface = { fg = c.teal_light },
    CmpItemKindModule = { fg = c.teal },
    CmpItemKindProperty = { fg = c.turquoise },
    CmpItemKindUnit = { fg = c.coral },
    CmpItemKindValue = { fg = c.coral },
    CmpItemKindEnum = { fg = c.teal },
    CmpItemKindKeyword = { fg = c.teal },
    CmpItemKindSnippet = { fg = c.magenta },
    CmpItemKindColor = { fg = c.coral },
    CmpItemKindFile = { fg = c.turquoise },
    CmpItemKindReference = { fg = c.magenta },
    CmpItemKindFolder = { fg = c.teal },
    CmpItemKindEnumMember = { fg = c.turquoise },
    CmpItemKindConstant = { fg = c.turquoise },
    CmpItemKindStruct = { fg = c.teal_light },
    CmpItemKindEvent = { fg = c.orange },
    CmpItemKindOperator = { fg = c.coral },
    CmpItemKindTypeParameter = { fg = c.teal },

    -- Which-key
    WhichKey = { fg = c.coral, bold = true },
    WhichKeyGroup = { fg = c.teal },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeperator = { fg = c.teal_dark },
    WhichKeyFloat = { bg = c.bg_light },
    WhichKeyValue = { fg = c.teal },

    -- Notify
    NotifyERRORBorder = { fg = c.coral },
    NotifyWARNBorder = { fg = c.orange },
    NotifyINFOBorder = { fg = c.teal },
    NotifyDEBUGBorder = { fg = c.teal_dark },
    NotifyTRACEBorder = { fg = c.magenta },
    NotifyERRORIcon = { fg = c.coral },
    NotifyWARNIcon = { fg = c.orange },
    NotifyINFOIcon = { fg = c.turquoise },
    NotifyDEBUGIcon = { fg = c.teal_dark },
    NotifyTRACEIcon = { fg = c.magenta },
    NotifyERRORTitle = { fg = c.coral },
    NotifyWARNTitle = { fg = c.orange },
    NotifyINFOTitle = { fg = c.turquoise },
    NotifyDEBUGTitle = { fg = c.teal_dark },
    NotifyTRACETitle = { fg = c.magenta },
    NotifyERRORBody = { fg = c.fg },
    NotifyWARNBody = { fg = c.fg },
    NotifyINFOBody = { fg = c.fg },
    NotifyDEBUGBody = { fg = c.fg },
    NotifyTRACEBody = { fg = c.fg },

    -- Neo-tree / Nvim-tree
    NeoTreeNormal = { fg = c.fg, bg = bg(c.bg) },
    NeoTreeNormalNC = { fg = c.fg, bg = bg(c.bg) },
    NeoTreeRootName = { fg = c.teal, bold = true },
    NeoTreeFileName = { fg = c.fg },
    NeoTreeFileIcon = { fg = c.turquoise },
    NeoTreeFileNameOpened = { fg = c.coral },
    NeoTreeIndentMarker = { fg = c.teal_dark },
    NeoTreeGitAdded = { fg = c.turquoise },
    NeoTreeGitConflict = { fg = c.coral, bold = true },
    NeoTreeGitDeleted = { fg = c.coral },
    NeoTreeGitIgnored = { fg = c.teal_dark },
    NeoTreeGitModified = { fg = c.cream },
    NeoTreeGitUnstaged = { fg = c.coral },
    NeoTreeGitUntracked = { fg = c.turquoise },
    NeoTreeGitStaged = { fg = c.turquoise },
    NeoTreeFloatBorder = { fg = c.teal, bg = bg(c.bg) },
    NeoTreeFloatTitle = { fg = c.bg, bg = c.teal, bold = true },

    NvimTreeNormal = { fg = c.fg, bg = bg(c.bg) },
    NvimTreeNormalNC = { fg = c.fg, bg = bg(c.bg) },
    NvimTreeRootFolder = { fg = c.teal, bold = true },
    NvimTreeFolderName = { fg = c.teal },
    NvimTreeFolderIcon = { fg = c.teal },
    NvimTreeEmptyFolderName = { fg = c.teal_dark },
    NvimTreeOpenedFolderName = { fg = c.coral },
    NvimTreeIndentMarker = { fg = c.teal_dark },
    NvimTreeGitDirty = { fg = c.cream },
    NvimTreeGitNew = { fg = c.turquoise },
    NvimTreeGitDeleted = { fg = c.coral },
    NvimTreeGitIgnored = { fg = c.teal_dark },
    NvimTreeSpecialFile = { fg = c.magenta, underline = true },

    -- Indent blankline
    IblIndent = { fg = c.bg_lighter },
    IblScope = { fg = c.teal },
    IblWhitespace = { fg = c.bg_lighter },

    -- Lualine (for custom theme reference)
    LualineNormalA = { fg = c.bg, bg = c.teal, bold = true },
    LualineInsertA = { fg = c.bg, bg = c.turquoise, bold = true },
    LualineVisualA = { fg = c.bg, bg = c.coral, bold = true },
    LualineReplaceA = { fg = c.bg, bg = c.orange, bold = true },
    LualineCommandA = { fg = c.bg, bg = c.cream, bold = true },
    LualineInactiveA = { fg = c.fg_dark, bg = c.bg_light },

    -- Flash
    FlashBackdrop = { fg = c.teal_dark },
    FlashMatch = { bg = c.teal_dark },
    FlashCurrent = { bg = c.coral, fg = c.bg, bold = true },
    FlashLabel = { bg = c.coral, fg = c.bg, bold = true },
  }
end

return M