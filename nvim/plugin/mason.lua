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

        -- Ruby
        "solargraph",

        -- Json
        "jsonls",

        -- Lua
        "sumneko_lua",

        -- Yaml
        "yamlls",

        -- Html
        "html",

        -- Css
        "cssls",
    },
    automatic_installation = true
})
