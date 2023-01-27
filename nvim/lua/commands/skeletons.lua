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
