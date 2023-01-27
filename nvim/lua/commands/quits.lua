local QuitGroup = vim.api.nvim_create_augroup("QuitGroup", { clear = true })

-- Q quit help and quickfix

vim.api.nvim_create_autocmd("FileType", {
    desc = "Close help and quickfix window with the q key",
    group = QuitGroup,
    pattern = { "help", "qf" },
    command = [[ nnoremap <buffer><silent>q <CMD>close<CR> ]]
})

-- Q quit man page

vim.api.nvim_create_autocmd("FileType", {
    desc = "Close man page window with the q key",
    group = QuitGroup,
    pattern = { "man" },
    command = [[ nnoremap <buffer><silent>q <CMD>quit<CR> ]]
})
