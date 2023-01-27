-- Enable spell checking for text based file types

vim.api.nvim_create_autocmd("FileType", {
    desc = 'Set spell for filetypes of a text based language',
    pattern = { "*.txt", "*.md", "*.tex", "*.text", "markdown" },
    callback = function()
        if not "&ft" == 'help' or 'man' then
            vim.opt.spell = true
            vim.opt.spelllang = "en"
        end
    end,
})

-- Turn off spell checking when changing buffer or window

vim.api.nvim_create_autocmd({ "BufLeave", "BufHidden", "WinLeave" }, {
    desc = 'Set no spell when leaveing a buffer or window',
    callback = function()
        vim.opt.spell = false
    end,
})
