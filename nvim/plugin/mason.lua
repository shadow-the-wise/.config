require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Install servers and formatting tools

require("mason-lspconfig").setup({
    ensure_installed = {
        "solargraph",
        "jsonls",
        "sumneko_lua",
        "yamlls",
        "html",
        "cssls",
    },
    automatic_installation = true
})

