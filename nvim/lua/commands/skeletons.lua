-- Skeletons

-- Skeletons are template files that are ran when a file is loaded.

local SkeletonGroup = vim.api.nvim_create_augroup("SkeletonTemplates", {clear = true})

vim.api.nvim_create_autocmd("BufNewFile", {
    desc = 'create a template file for ruby filetypes',
    group = SkeletonGroup,
    pattern = "*.rb",
    command = "0r ~/.config/nvim/skeleton/skeleton.rb"
})

vim.api.nvim_create_autocmd("BufNewFile", {
    desc = 'create a template file for text and markdown filetypes',
    group = SkeletonGroup,
    pattern = { "*.txt", "*.md" },
    command = "0r ~/.config/nvim/skeleton/skeleton.md"
})

vim.api.nvim_create_autocmd("BufNewFile", {
    desc = 'create a template file for bash filetypes',
    group = SkeletonGroup,
    pattern = "*.sh",
    command = "0r ~/.config/nvim/skeleton/skeleton.sh"
})

vim.api.nvim_create_autocmd("BufNewFile", {
    desc = 'create a template file for peal filetypes',
    group = SkeletonGroup,
    pattern = "*.pl",
    command = "0r ~/.config/nvim/skeleton/skeleton.pl"
})
