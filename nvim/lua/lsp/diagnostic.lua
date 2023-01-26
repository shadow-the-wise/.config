-- Customizing how diagnostics are displayed

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
    -- spacing (number) amount of empty spaces preceeding virtual text
})

-- Change diagnostic symbols in the sign column

local signs = { Error = "✖", Warn = "⚠", Hint = "➜", Info = "➜" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Change prefix/character preceding the diagnostics' virtual text

vim.diagnostic.config({
    virtual_text = {
        prefix = '■', -- Could be '●', '▎', 'x'
    },
    float = {
        border = 'single',
        width = 60
    },
})
