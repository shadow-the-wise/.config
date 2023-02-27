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
        "lua_ls",
        "yamlls",
        "html",
        "cssls",
    },
    automatic_installation = true
})
