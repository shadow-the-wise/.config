-- Autocompletion configuration file

local cmp = require 'cmp'

-- Require lua snippet Engine
local luasnip = require("luasnip")

-- Set completeopt to have a better completion experience

vim.opt.completeopt = { "menuone", "noinsert", "noselect" }

local icons = {
    Array = ' ',
    Boolean = ' ',
    Class = ' ',
    Color = ' ',
    Constant = ' ',
    Constructor = ' ',
    Enum = ' ',
    EnumMember = ' ',
    Event = ' ',
    Field = ' ',
    File = ' ',
    Folder = ' ',
    Function = ' ',
    Interface = ' ',
    Key = ' ',
    Keyword = ' ',
    Method = ' ',
    Module = ' ',
    Namespace = ' ',
    Null = 'ﳠ ',
    Number = ' ',
    Object = ' ',
    Operator = ' ',
    Package = ' ',
    Property = ' ',
    Reference = ' ',
    Snippet = ' ',
    String = ' ',
    Struct = ' ',
    Text = ' ',
    TypeParameter = ' ',
    Unit = ' ',
    Value = ' ',
    Variable = ' ',
}

-- Functon for tab completion

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
    --  Nvim-cmp respects the LSP (Language Server Protocol) specification.
    --  The LSP spec defines the `preselect` feature for completion.
    --  You can disable the `preselect` feature like this:

    -- preselect = cmp.PreselectMode.None

    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    window = {
        -- Default Options
        -- cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),

        completion = {
            border = 'single',
            winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
        },
        documentation = {
            border = 'single',
            winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
        },
    },
    formatting = {
        fields = { 'kind', 'abbr', 'menu' },
        format = function(entry, item)
            item.kind = string.format('%s', icons[item.kind])
            item.menu = ({
                    buffer = '[Buffer]',
                    luasnip = '[Snip]',
                    nvim_lsp = '[LSP]',
                    nvim_lua = '[API]',
                    path = '[Path]',
                    rg = '[RG]',
                })[entry.source.name]
            return item
        end,
    },
    -- Accept currently selected item. Set `select` to `false` to only
    -- confirm explicitly selected items.
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs( -4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<ESC'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
                -- You could replace the expand_or_jumpable() calls with
                -- expand_or_locally_jumpable() -- they way you will only jump
                -- inside the snippet region
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable( -1) then
                luasnip.jump( -1)
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp',                priority = 5, options = { show_autosnippets = false } },
        { name = 'buffer',                  priority = 4 },
        { name = 'luasnip',                 priority = 3 },
        { name = 'path',                    priority = 2 },
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim-lsp-document-symbol' },
        { name = 'nvim_lua' },
    }),
})

-- How to setup nvim-cmp for a specific buffer?

cmp.setup.filetype({ 'markdown', 'help' }, {
    sources = {
        { name = 'path' },
        { name = 'buffer' },
    },
    window = {
        documentation = cmp.config.disable
    }
})

-- Require the snippets of choice

require("luasnip.loaders.from_vscode").lazy_load()

-- if you want to add rails snippets to ruby

require 'luasnip'.filetype_extend("ruby", { "rails" })
