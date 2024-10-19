-- ========================================================================== --
-- ==                           OPTIONS SETTINGS                           == --
-- ========================================================================== --
vim.g.loaded_netrw = 1 -- Deactivate netrw file manager (handled by a plugin).
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " " -- Redefine leader key.
vim.g.maplocalleader = "," -- Redefine local leader key.
vim.g.sqlite_clib_path = require('luv').os_getenv('LIBSQLITE')	-- Let sqlite.lua know where to find sqlite.

vim.opt.breakindent = true -- Conserve indentation of virtual wrapped lines.
vim.opt.colorcolumn = "" -- Formatting is generally already handled by external packages.
vim.opt.conceallevel = 0 -- Show conceiled text or not (markdown, neorg, latex...).
vim.opt.cursorline = true -- Highlight cursor line.
vim.opt.expandtab = true -- Whether or not we want to transform tabs to spaces.
vim.opt.foldcolumn = "0"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99 -- Do not fold by default when opening a file.
vim.opt.hlsearch = true -- Set highlight on search.
vim.opt.ignorecase = true -- Case insensitive searching.
vim.opt.inccommand = "split"
vim.opt.list = true -- Show invisible spaces.
vim.opt.listchars:append({
	tab = "» ",
	extends = "›",
	precedes = "‹",
	trail = "·",
	nbsp = "·",
	-- eol = "↵"
})
vim.opt.mouse = "a" -- Enable mouse for all modes.
vim.opt.scrolloff = 5 -- Offset before scrolling.
vim.opt.shiftwidth = 4 -- Amount of spaces are used to indent a line.
vim.opt.smartcase = true -- Case insensitive unless there is capital or /C in search.
vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.opt.smoothscroll = true -- Scroll naturally on softwrapped lines.
vim.opt.splitbelow = true -- Choose where splits are going.
vim.opt.splitright = true
vim.opt.showmode = false -- Do not show mode.
vim.opt.showmatch = true -- Highlight matching parentheses, etc
vim.opt.swapfile = false -- Deactivate swap file.
vim.opt.tabstop = 4 -- Amount of spaces a 'tab' character occupy.
vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI.
vim.opt.textwidth = 79 -- Size of the lines when formatting with `gq`.
vim.opt.undofile = true -- Save undo history.
vim.opt.history = 2000 -- Number of undo levels.
vim.opt.nrformats = 'bin,hex' -- 'octal'
vim.opt.updatetime = 1000 -- Decrease update time (default is 4000).
vim.opt.virtualedit = "block"
vim.opt.cmdheight = 0
vim.opt.wrap = false -- Whether or not we want to wrap long lines.
vim.opt.spell = true
vim.opt.spelllang = 'en'

vim.wo.number = true -- Show line numbers default.
vim.wo.relativenumber = false
vim.wo.signcolumn = "yes" -- Always shows the sign column (where we put gitsigns and warnings).

require("commands")
require("commons")
require("diagnostics")
require("keybindings")
require("pencil")
require("rooter")
