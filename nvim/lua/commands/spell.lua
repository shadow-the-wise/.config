-- Enable spell checking for text based file types

local SpellGroup = vim.api.nvim_create_augroup("SpellGroup", { clear = true })

-- Turn on spell checking for text based filetypes

vim.api.nvim_create_autocmd("FileType", {
    group = SpellGroup,
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
    group = SpellGroup,
    desc = 'Set no spell when leaveing a buffer or window',
    callback = function()
        vim.opt.spell = false
    end,
})
