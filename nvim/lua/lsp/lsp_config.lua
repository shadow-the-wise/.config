-- [Mappings]

-- Create a group for our formatting
local LspFormatting = vim.api.nvim_create_augroup("LspFormatting", {})

-- Use an on_attach function to only map the following keys after the language
-- server attaches to the current buffer

local on_attach = function(client, bufnr)
    -- Server capabilities spec:
    -- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#serverCapabilities
    if client.server_capabilities.documentHighlightProvider then
        vim.api.nvim_create_augroup("lsp_document_highlight", { clear = true })
        vim.api.nvim_clear_autocmds { buffer = bufnr, group = "lsp_document_highlight" }
        vim.api.nvim_create_autocmd("CursorHold", {
            callback = vim.lsp.buf.document_highlight,
            buffer = bufnr,
            group = "lsp_document_highlight",
            desc = "Document Highlight",
        })
        vim.api.nvim_create_autocmd("CursorMoved", {
            callback = vim.lsp.buf.clear_references,
            buffer = bufnr,
            group = "lsp_document_highlight",
            desc = "Clear All the References",
        })
    end

    -- formatting on save

    if client.supports_method "textDocument/formatting" then
        vim.api.nvim_clear_autocmds { group = LspFormatting, buffer = bufnr }
        vim.api.nvim_create_autocmd("BufWritePre", {
            desc = "format the textDocument on save",
            group = LspFormatting,
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
                print("formatted by " .. client.name)
            end,
        })
    end

    if client.server_capabilities.document_formatting then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format() ")
    end

    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions

    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    --vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)

    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

--Enable (broadcasting) snippet capability for completion

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- [JSON]

require('lspconfig').jsonls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

-- [RUBY]

require('lspconfig')["solargraph"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    filetypes = { "ruby" },
    cmd = { "solargraph", "stdio" },
    init_options = { formatting = true },
    settings = {
        solargraph = {
            diagnostics     = true,
            autoformat      = true,
            bundlerPath     = "bundle",
            checkGemVersion = true,
            commandPath     = "solargraph",
            completion      = true,
            definitions     = true,
            folding         = true,
            formatting      = true,
            hover           = true,
            logLevel        = "warn",
            references      = true,
            rename          = true,
            symbols         = true,
            transport       = "socket",
            useBundler      = false
        }
    },
}

-- [LUA]

require('lspconfig')["sumneko_lua"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                enabled = true,
                globals = { 'vim' }
            },
            completion = {
                enable = true,
            },
            workspace = {
                useGitIgnore = true,
            },
            format = {
                enable = true,
            },
            hint = {
                enable = true,
            },
            hover = {
                enable = true,
            }
        }
    }
}

-- [HTML]

require('lspconfig')["html"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    filetypes = { "html", "eruby", "erb" },
    settings = {
        html = {
            autoClosingTags = true,
            autoCreateQuotes = true,
            mirrorCursorOnMatchingTag = false,
            completion = {
                attributeDefaultValue = "doublequotes",
            },
            format = {
                enable                      = true,
                contentUnformatted          = "pre,code,textarea",
                indentHandlebars            = false,
                indentInnerHtml             = false,
                maxPreserveNewLines         = 1,
                preserveNewLines            = false,
                templating                  = false,
                unformatted                 = "wbr",
                unformattedContentDelimiter = "",
                wrapAttributes              = "auto",
                wrapAttributesIndentSize    = 4,
                wrapLineLength              = 120,
            },
            hover = {
                documentation = true,
                references = true,
            },
            validate = {
                scripts = true,
                styles  = true,
            },
            suggest = {
                html5 = true,
            },
            trace = {
                server = "off",
            }
        }
    }
}

-- [YAML]
-- TODO: formatting is not working

require('lspconfig')["yamlls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

-- [CSS]
-- TODO: formatting is not working

require('lspconfig')["cssls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    filetypes = { "css", "scss", "less" },
    cmd = { "vscode-css-language-server", "--stdio" },
    autostart = true,
    settings = {
        css = {
            validate = true
        },
        less = {
            validate = true
        },
        scss = {
            validate = true
        }
    }
}
