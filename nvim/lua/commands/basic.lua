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

-- [Typos]
-- misspelling to intended wrtie file and quit

vim.cmd [[command! -bang W w<bang>]]
vim.cmd [[command! -bang Wq wq<bang>]]
vim.cmd [[command! -bang Q q<bang>]]

-- Source abbreviations

vim.api.nvim_create_autocmd({ "VimEnter" }, {
    desc = "Source abbreviation file",
    command = [[source ~/.config/nvim/abbrev.vim]]
})

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
