local g = vim.g -- global variables
local opt = vim.opt -- editor options

-- # Settings
g.mapleader = " "             -- leader key

opt.termguicolors = true      -- enable 24-bit RGB colors
opt.completeopt = {'menuone', 'noinsert', 'noselect'}  -- Completion options
opt.hidden = true                   -- Enable background buffers
opt.ignorecase = true               -- Ignore case
opt.joinspaces = false              -- No double spaces with join
opt.list = true                     -- Show some invisible characters
opt.number = true                   -- Show line numbers
-- opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 4                   -- Lines of context
opt.shiftround = true               -- Round indent
opt.sidescrolloff = 8               -- Columns of context
opt.smartcase = true                -- Do not ignore case with capitals

opt.expandtab = true                -- Use spaces instead of tabs
opt.smartindent = true              -- Insert indents automatically
opt.shiftwidth = 2                  -- Size of an indent
opt.tabstop = 2                     -- Number of spaces tabs count for

opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.termguicolors = true            -- True color support
opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
opt.wrap = false                    -- Disable line wrap
opt.autoread = true                 -- auto-reload file after changes

opt.clipboard = 'unnamedplus' -- Enable system clipboard

-- Folding
opt.foldmethod = 'manual'
opt.foldenable = false

-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

-- Disable nvim intro
opt.shortmess:append "sI"

-- Enable undo history
opt.undofile = true
