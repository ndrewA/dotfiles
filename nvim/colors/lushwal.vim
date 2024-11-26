set background=dark
if exists('g:colors_name')
hi clear
if exists('syntax_on')
syntax reset
endif
endif
let g:colors_name = 'lushwal'
highlight Normal guifg=#D5D1BE guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight! link User Normal
highlight Bold guifg=#D5D1BE guibg=#101213 guisp=NONE blend=NONE gui=bold
highlight Boolean guifg=#D47602 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Character guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight ColorColumn guifg=#A9A593 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Comment guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=italic
highlight Conceal guifg=#949184 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight! link Whitespace Conceal
highlight Conditional guifg=#6BFFD8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Constant guifg=#D47602 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Cursor guifg=#101213 guibg=#D5D1BE guisp=NONE blend=NONE gui=NONE
highlight CursorColumn guifg=#A9A593 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLine guifg=#949184 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLineNr guifg=#D5D1BE guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight Debug guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Define guifg=#6BFFD8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Delimiter guifg=#CC9600 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticError guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticHint guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticInfo guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#C28E00 guibg=NONE guisp=#C28E00 blend=NONE gui=underline
highlight DiagnosticUnderlineHint guifg=#FFB83D guibg=NONE guisp=#FFB83D blend=NONE gui=underline
highlight DiagnosticUnderlineInfo guifg=#54F000 guibg=NONE guisp=#54F000 blend=NONE gui=underline
highlight DiagnosticUnderlineWarn guifg=#EB5A00 guibg=NONE guisp=#EB5A00 blend=NONE gui=underline
highlight DiagnosticWarn guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffAdd guifg=#99D100 guibg=#949184 guisp=NONE blend=NONE gui=bold
highlight! link DiffAdded DiffAdd
highlight DiffChange guifg=#C2BDA8 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight DiffDelete guifg=#C28E00 guibg=#949184 guisp=NONE blend=NONE gui=bold
highlight! link DiffRemoved DiffDelete
highlight! link diffRemoved DiffDelete
highlight DiffFile guifg=#C28E00 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight DiffLine guifg=#54F000 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight DiffNewFile guifg=#99D100 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight DiffText guifg=#54F000 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight EndOfBuffer guifg=#D5D1BE guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight Error guifg=#C28E00 guibg=#D5D1BE guisp=NONE blend=NONE gui=NONE
highlight ErrorMsg guifg=#C28E00 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight Exception guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Float guifg=#D47602 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight FoldColumn guifg=#54F000 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight Folded guifg=#D5D1BE guibg=#949184 guisp=NONE blend=NONE gui=italic
highlight Function guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Identifier guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight IncSearch guifg=#949184 guibg=#D47602 guisp=NONE blend=NONE gui=NONE
highlight Include guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Italic guifg=#D5D1BE guibg=#101213 guisp=NONE blend=NONE gui=italic
highlight Keyword guifg=#6BFFD8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Label guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LineNr guifg=#C2BDA8 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight Macro guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MatchParen guifg=#D5D1BE guibg=#C2BDA8 guisp=NONE blend=NONE gui=NONE
highlight MiniCompletionActiveParameter guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniCursorword guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight! link MiniCursorwordCurrent MiniCursorword
highlight MiniIndentscopePrefix guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=nocombine
highlight MiniIndentscopeSymbol guifg=#949184 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight MiniJump guifg=#54F000 guibg=NONE guisp=#C2BDA8 blend=NONE gui=underline
highlight MiniJump2dSpot guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight MiniStarterCurrent guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterFooter guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterHeader guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterInactive guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=italic
highlight MiniStarterItem guifg=#D5D1BE guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemBullet guifg=#CC9600 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemPrefix guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterQuery guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterSection guifg=#CC9600 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineDevinfo guifg=#D5D1BE guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFileinfo guifg=#D5D1BE guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFilename guifg=#EB5A00 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineInactive guifg=#A9A593 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeCommand guifg=#101213 guibg=#FFB83D guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeInsert guifg=#101213 guibg=#54F000 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeNormal guifg=#101213 guibg=#99D100 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeOther guifg=#101213 guibg=#6BFFD8 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeReplace guifg=#101213 guibg=#C28E00 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeVisual guifg=#101213 guibg=#D47602 guisp=NONE blend=NONE gui=NONE
highlight MiniSurround guifg=#949184 guibg=#D47602 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineCurrent guifg=#C2BDA8 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineFill guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniTablineHidden guifg=#99D100 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedCurrent guifg=#D5D1BE guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedHidden guifg=#A9A593 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedVisible guifg=#D5D1BE guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineVisible guifg=#C2BDA8 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight MiniTestEmphasis guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestFail guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestPass guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTrailspace guifg=#C28E00 guibg=#D5D1BE guisp=NONE blend=NONE gui=NONE
highlight ModeMsg guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MoreMsg guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NonText guifg=#C2BDA8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Number guifg=#D47602 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Operator guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PMenu guifg=#D5D1BE guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight PMenuSel guifg=#D5D1BE guibg=#54F000 guisp=NONE blend=NONE gui=NONE
highlight PmenuSbar guifg=#A9A593 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PmenuThumb guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Question guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Repeat guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Search guifg=#C2BDA8 guibg=#EB5A00 guisp=NONE blend=NONE gui=NONE
highlight! link MiniTablineTabpagesection Search
highlight SignColumn guifg=#A9A593 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialChar guifg=#CC9600 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialKey guifg=#C2BDA8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpellBad guifg=#C28E00 guibg=NONE guisp=#C28E00 blend=NONE gui=underline
highlight SpellCap guifg=#EB5A00 guibg=NONE guisp=#EB5A00 blend=NONE gui=underline
highlight SpellLocal guifg=#FFB83D guibg=NONE guisp=#FFB83D blend=NONE gui=underline
highlight SpellRare guifg=#6BFFD8 guibg=NONE guisp=#6BFFD8 blend=NONE gui=underline
highlight Statement guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight StatusLine guifg=#D5D1BE guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight StatusLineNC guifg=#A9A593 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight StatusLineTerm guifg=#99D100 guibg=#99D100 guisp=NONE blend=NONE gui=NONE
highlight StatusLineTermNC guifg=#EB5A00 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight StorageClass guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight String guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Structure guifg=#6BFFD8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TabLine guifg=#C2BDA8 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight TabLineFill guifg=#C2BDA8 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight TabLineSel guifg=#99D100 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight Tag guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Title guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight Todo guifg=#EB5A00 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight TooLong guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Type guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Typedef guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Underlined guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight VertSplit guifg=#D5D1BE guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight! link WinSeparator VertSplit
highlight Visual guifg=#101213 guibg=#A9A593 guisp=NONE blend=NONE gui=NONE
highlight VisualNOS guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WarningMsg guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WildMenu guifg=#D5D1BE guibg=#54F000 guisp=NONE blend=NONE gui=NONE
highlight WinBar guifg=#D5D1BE guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight WinBarNC guifg=#A9A593 guibg=#101213 guisp=NONE blend=NONE gui=NONE
highlight gitCommitOverflow guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight gitCommitSummary guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpCommand guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpExample guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @attribute guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @boolean guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character.special guifg=#CC9600 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @comment guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @conditional guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.builtin guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.macro guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constructor guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @debug guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @define guifg=#6BFFD8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @exception guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @field guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @float guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.builtin guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.macro guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @include guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword guifg=#6BFFD8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.function guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.operator guifg=#6BFFD8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @label guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @method guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @namespace guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @none guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @number guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @operator guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @parameter guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @preproc guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @property guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.bracket guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.delimiter guifg=#D5D1BE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.special guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @repeat guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @storageclass guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.escape guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.regex guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.special guifg=#CC9600 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @symbol guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.attribute guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.delimiter guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.bold guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.danger guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.diff.add guifg=#99D100 guibg=#949184 guisp=NONE blend=NONE gui=bold
highlight @text.diff.delete guifg=#C28E00 guibg=#949184 guisp=NONE blend=NONE gui=bold
highlight @text.emphasis guifg=#6BFFD8 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @text.environment guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.environment.name guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.literal guifg=#99D100 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.math guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.note guifg=#FFB83D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.reference guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.strike guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=strikethrough
highlight @text.title guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.todo guifg=#EB5A00 guibg=#949184 guisp=NONE blend=NONE gui=NONE
highlight @text.underline guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight @text.uri guifg=NONE guibg=#949184 guisp=NONE blend=NONE gui=underline
highlight @type guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.builtin guifg=#54F000 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.definition guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable guifg=#EB5A00 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable.builtin guifg=#C28E00 guibg=NONE guisp=NONE blend=NONE gui=NONE
