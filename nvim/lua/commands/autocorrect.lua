-- Source abbreviations

local AutoCorrect = vim.api.nvim_create_augroup("AutoCorrect", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
    group = AutoCorrect,
    desc = "Source abbreviation file",
    command = [[source ~/.config/nvim/abbrev.vim]]
})
