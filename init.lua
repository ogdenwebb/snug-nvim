-- NOTE: recentf = oldfiles in Vim
-- TODO: disable preview in Telescope?

-- # Aliases
local cmd  = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
-- local fn   = vim.fn    -- to call Vim functions e.g. fn.bufnr()
-- local g    = vim.g      -- a table to access global variables
-- local exec = vim.api.nvim_exec 	-- execute Vimscript
-- local opt  = vim.opt  -- to set options
--
-- # Initialize plugins with packer
require "snug.plugins"

-- # General settings
require "snug.options"

-- # Plugin configuration
require "snug.config"

-- # Keybindings
require "snug.keymaps"

require "snug.completion"

-- # Plugin configuration
require "snug.statusline"

-- Enable colorscheme
cmd "colorscheme nightfox"

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Terminal visual tweaks
--- Enter insert mode when switching to terminal
--- Close terminal buffer on process exit
cmd [[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * startinsert
    autocmd BufLeave term://* stopinsert
]]

