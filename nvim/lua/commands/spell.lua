-- Enable spell checking for text based file types

local SpellGroup = vim.api.nvim_create_augroup("SpellGroup", { clear = true })

-- Turn on spell checking for text based filetypes

vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
    group = SpellGroup,
    desc = 'Set spell for filetypes of a text based language',
    callback = function()
        local ft = vim.bo.filetype
        if ft == 'text' then
            vim.opt.spell = true
            vim.opt.spelllang = "en"
        elseif ft == 'markdown' then
            vim.opt.spell = true
            vim.opt.spelllang = "en"
        else
            vim.opt.spell = false
        end
    end,
})
