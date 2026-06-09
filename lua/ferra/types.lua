---@class Ferra
---@field options FerraOptions
---@field setup fun(opts: FerraOptions?)

---@alias FerraFlavor "ferra"
---@alias FerraColor "rosewater" | "flamingo" | "pink" | "mauve" | "red" | "maroon" | "peach" | "yellow" | "green" | "teal" | "sky" | "sapphire" | "coral" | "lavender" | "text" | "subtext1" | "subtext0" | "overlay2" | "overlay1" | "overlay0" | "surface2" | "surface1" | "surface0" | "base" | "mantle" | "crust"
---@class FerraFlavors<T>: {all: T, ferra: T }
---@class FerraColors<T>: {rosewater: T, flamingo: T, pink: T, mauve: T, red: T, maroon: T, peach: T, yellow: T, green: T, teal: T, sky: T, sapphire: T, coral: T, lavender: T, text: T, subtext1: T, subtext0: T, overlay2: T, overlay1: T, overlay0: T, surface2: T, surface1: T, surface0: T, base: T, mantle: T, crust: T, none: T }

---@class FerraOptions
-- Changes the flavor based on the background. See `:h background` for more info.
---@field background FerraBackground?
-- By default ferra writes the compiled results into the system's cache directory.
-- You can change the cache dir by changing this value.
---@field compile_path string?
-- Whether to enable transparency.
---@field transparent_background boolean?
---@field float FerraFloatOpts?
-- If true, sets terminal colors (e.g. `g:terminal_color_0`).
---@field term_colors boolean?
-- Workaround for kitty transparency issue: https://github.com/kovidgoyal/kitty/issues/2917
---@field kitty boolean?
-- Settings for dimming of inactive windows.
---@field dim_inactive FerraDimInactive?
-- Disables all italic styles.
---@field no_italic boolean?
-- Disables all bold styles.
---@field no_bold boolean?
-- Disables all underline styles.
---@field no_underline boolean?
-- Handles the style of general hl groups (see `:h highlight-groups`).
---@field styles FerraStyles?
-- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
---@field lsp_styles FerraLspStyles?
-- Should default integrations be used.
---@field default_integrations boolean?
-- Should detect integrations automatically
---@field auto_integrations boolean?
-- Toggle integrations. Integrations allow Ferra to set the theme of various plugins.
---@field integrations FerraIntegrations?
-- Ferra colors can be overwritten here.
---@field color_overrides FerraColors | FerraFlavors<FerraColors<string>> | nil
-- Ferra highlights can be overwritten here.
---@field highlight_overrides FerraHighlightOverrides?
-- Global highlight overrides.
---@field custom_highlights FerraHighlightOverrideFn | {[string]: FerraHighlight} | nil
-- The default flavor to use on startup.
---@field flavour FerraFlavor?

---@class FerraBackground
-- Ferra flavor to use when `:set background=dark` is set.
---@field dark FerraFlavor?
-- Ferra flavor to use when `:set background=light` is set.
---@field light FerraFlavor?

---@class FerraFloatOpts
---@field transparent boolean enable transparent floating windows
---@field solid boolean use solid style floating windows, see |winborder|

---@class FerraDimInactive
-- Whether to dim inactive windows.
---@field enabled boolean
-- Whether to darken or lighten inactive windows.
---@field shade "dark" | "light" | nil
-- Percentage of the shade to apply to the inactive window
---@field percentage number?

---@class FerraStyles
-- Change the style of comments.
---@field comments FerraHighlightArgs[]?
-- Change the style of conditionals.
---@field conditionals FerraHighlightArgs[]?
-- Change the style of loops.
---@field loops FerraHighlightArgs[]?
-- Change the style of functions.
---@field functions FerraHighlightArgs[]?
-- Change the style of keywords.
---@field keywords FerraHighlightArgs[]?
-- Change the style of strings.
---@field strings FerraHighlightArgs[]?
-- Change the style of variables.
---@field variables FerraHighlightArgs[]?
-- Change the style of numbers.
---@field numbers FerraHighlightArgs[]?
-- Change the style of booleans.
---@field booleans FerraHighlightArgs[]?
-- Change the style of properties.
---@field properties FerraHighlightArgs[]?
-- Change the style of types.
---@field types FerraHighlightArgs[]?
-- Change the style of operators.
---@field operators FerraHighlightArgs[]?
-- Change the style of miscs.
---@field miscs FerraHighlightArgs[]?

---@class FerraLspStyles
-- Styles to apply to virtual text.
---@field virtual_text FerraLspDiagnosticStyles?
-- Styles to apply to underlines.
---@field underlines FerraLspDiagnosticStyles?
-- Inlay hints options.
---@field inlay_hints FerraLspStylesInlayHints?

---@class FerraLspDiagnosticStyles
-- Change the style of LSP error diagnostics.
---@field errors FerraHighlightArgs[]?
-- Change the style of LSP hint diagnostics.
---@field hints FerraHighlightArgs[]?
-- Change the style of LSP warning diagnostics.
---@field warnings FerraHighlightArgs[]?
-- Change the style of LSP information diagnostics.
---@field information FerraHighlightArgs[]?
-- Change the style of LSP ok diagnostics.
---@field ok FerraHighlightArgs[]?

---@class FerraLspStylesInlayHints
-- Toggle the background of inlay hints.
---@field background boolean?

---@class FerraIntegrations
---@field aerial boolean?
---@field alpha boolean?
---@field artio boolean?
---@field avante FerraIntegrationAvante | boolean?
--...
---@class FerraIntegrationAvante
--  Whether the opts.windows.sidebar_header.rounded option is set on Avante
---@field enabled boolean
---@field windows_sidebar_header_rounded boolean?

---@class FerraIntegrationBarbecue
--  Whether to use the alternative background.
---@field alt_background boolean?
-- Whether the basename should be bold.
---@field bold_basename boolean?
-- Whether the context should be dimmed.
---@field dim_context boolean?
-- Whether the directory name should be dimmed.
---@field dim_dirname boolean?

---@class FerraIntegrationsBlinkCmp
--- The border style for the completion menu
---@field style 'solid'|'bordered'

---@class FerraIntegrationColorfulWinsep
-- Whether to enable the colorful-winsep integration.
---@field enabled boolean
-- Set to a Ferra color name to use for the split separator.
---@field color FerraColor?

---@class FerraIntegrationDropbar
-- Whether to enable the dropbar integration.
---@field enabled boolean
-- Set to true to apply color to the text in dropbar, false to only apply it to the icons.
---@field color_mode boolean?

---@class FerraIntegrationGitsigns
--- Whether to enable the gitsigns integration
---@field enabled boolean
--- Whether to enabled transparent background option
---@field transparent boolean?

---@class FerraIntegrationIndentBlankline
-- Whether to enable the integration.
---@field enabled boolean
-- Sets the color of the scope line
---@field scope_color FerraColor?
-- Enables char highlights per indent level.
-- Follow the instructions on the plugins GitHub repo to set it up.
---@field colored_indent_levels boolean?

---@class FerraIntegrationLir
-- Whether to enable the integration.
---@field enabled boolean
-- Sets lir-git-status.nvim highlight groups
---@field git_status boolean

---@class FerraIntegrationMini
-- Whether to enable the integration.
---@field enabled boolean
-- Sets the color of the scope line
---@field indentscope_color FerraColor?

---@alias FerraIntegrationLualine FerraFlavors<FerraIntegrationLualineOverride | FerraIntegrationLualineOverrideFn>
---@alias FerraIntegrationLualineOverride FerraIntegrationLualineModes<FerraIntegrationLualineSectionOverrides>
---@alias FerraIntegrationLualineOverrideFn fun(colors: FerraColors<string>): FerraIntegrationLualineOverride
---@alias FerraIntegrationLualineMode "normal" | "insert" | "visual" | "replace" | "command" | "terminal" | "inactive"
---@class FerraIntegrationLualineModes<T>: { all: T, normal: T, insert: T, visual: T, replace: T, command: T, terminal: T, inactive: T }
---@alias FerraIntegrationLualineSectionOverrides FerraIntegrationLualineSections<FerraIntegrationLualineSectionOverride>
---@alias FerraIntegrationLualineSection "a" | "b" | "c"
---@class FerraIntegrationLualineSections<T>: { a: T, b: T, c: T }
---@class FerraIntegrationLualineSectionOverride
---@field fg string?
---@field bg string?
---@field gui string? `gui` argument such as "italic,bold", see |highlight-gui|

---@class FerraIntegrationNavic
-- Whether to enable the navic integration.
---@field enabled boolean
-- Override the background color for navic.
---@field custom_bg FerraColor | "NONE" | "lualine" | nil

---@class FerraIntegrationSnacks
-- Whether to enable the snacks integration.
---@field enabled boolean
-- Sets the color of the indent scope line
---@field indent_scope_color FerraColor?

---@class FerraIntegrationTelescope
-- Whether to enable the telescope integration
---@field enabled boolean?

---@class FerraIntegrationIlluminate
-- Whether to enable the vim-illuminate integration
---@field enabled boolean?
-- Whether to standout IlluminatedWordWrite hl group
---@field lsp boolean?

---@alias FerraHighlightArgs "bold" | "underline" | "undercurl" | "underdouble" | "underdotted" | "underdashed" | "strikethrough" | "reverse" | "inverse" | "italic" | "standout" | "altfont" | "nocombine" | "NONE"
---@alias FerraHighlightOverrideFn fun(colors: FerraColors<string>): { [string]: FerraHighlight}
---@alias FerraHighlightOverrides FerraFlavors<FerraHighlightOverrideFn>

---@class FerraHighlight
---@field fg string?
---@field bg string?
---@field style FerraHighlightArgs[]?
---@field link string?
