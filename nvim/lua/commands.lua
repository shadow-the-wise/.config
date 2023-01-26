-------------------------------------------------------------------------------
-- FILE: Aug Commands
-- AUTHOR: Shadow
-- DATE: 21 jan 2023 07:30
-------------------------------------------------------------------------------

-- AUG COMMANDS

-- color scheme

vim.cmd [[colorscheme nord]]

-- enable synatx

vim.cmd [[syntax enable]]

-- Highlight the symbol and its references on a CursorHold event(cursor is idle)

-- vim.api.nvim_create_autocmd({ "CursorHold" }, {
--desc = "Highlight symbol under cursor on CursorHold",
--command = "silent call CocActionAsync('highlight')"
-- })

-- Remove white space

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    desc = "Remove white space",
    pattern = { "*" },
    command = [[%s/\s\+$//e]]
})

-- Highlight text on yank

vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Hightlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 150 }
    end,
})

-- TODO: Set no spell on buffer exit

-- Enable spell checking for certain file types
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.txt", "*.md", "*.tex", "*.text" },
    callback = function()
        vim.opt.spell = true
        vim.opt.spelllang = "en"
    end,
})

-- TODO: Set no spell on helpfiles

-- Q quit help and quickfix

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "help", "qf" },
    command = [[ nnoremap <buffer><silent>q <CMD>close<CR> ]]
})

-- Q quit man page

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "man" },
    command = [[ nnoremap <buffer><silent>q <CMD>quit<CR> ]]
})

-- TODO find how to also map q to close the command line window

-- Skeletons

vim.api.nvim_create_autocmd("BufNewFile", {
    desc = 'create a template file for ruby filetypes',
    pattern = "*.rb",
    group = vim.api.nvim_create_augroup("create_skeletons", { clear = true }),
    command = "0r ~/.config/nvim/skeleton/skeleton.rb"
})

vim.api.nvim_create_autocmd("BufNewFile", {
    desc = 'create a template file for text and markdown filetypes',
    pattern = { "*.txt", "*.md" },
    group = vim.api.nvim_create_augroup("create_skeletons", { clear = true }),
    command = "0r ~/.config/nvim/skeleton/skeleton.md"
})


vim.api.nvim_create_autocmd("BufNewFile", {
    desc = 'create a template file for bash filetypes',
    pattern = "*.sh",
    group = vim.api.nvim_create_augroup("create_skeletons", { clear = true }),
    command = "0r ~/.config/nvim/skeleton/skeleton.sh"
})

vim.api.nvim_create_autocmd("BufNewFile", {
    desc = 'create a template file for peal filetypes',
    pattern = "*.pl",
    group = vim.api.nvim_create_augroup("create_skeletons", { clear = true }),
    command = "0r ~/.config/nvim/skeleton/skeleton.pl"
})
