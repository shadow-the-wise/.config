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
