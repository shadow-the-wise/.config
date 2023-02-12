-- Extend some of the FileBrowser action-- Extend some of the FileBrowser
-- action-- Extend some of the FileBrowser actions

local fb_actions = require "telescope".extensions.file_browser.actions

require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        path_display = { "smart" },
        shorten_path = true,
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        entry_prefix = "  ",
        initial_mode = "normal",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "vertical",
        layout_config = {
            horizontal = {
                mirror = false,
                height = 0.9,
                preview_cutoff = 120,
                prompt_position = "bottom",
                width = 0.8
            },
            vertical = {
                mirror = false,
                height = 0.9,
                preview_cutoff = 40,
                prompt_position = "bottom",
                width = 0.8
            },
        },
        file_sorter = require 'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = { "node_modules", ".git", "%.dll", "%.mkv", "%.rar", "%.zip", "%.7z", "%.tar", "%.flac",
            "%.tar.gz", "%.jar", "%.spl" },
        generic_sorter = require 'telescope.sorters'.get_generic_fuzzy_sorter,
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,

        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require 'telescope.previewers'.buffer_previewer_maker
    },
    extensions = {
        file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["n"] = {
                    -- Jump to ENV['HOME']
                    ["h"] = fb_actions.goto_home_dir,
                    -- Change Directory up CWD
                    ["w"] = fb_actions.goto_cwd,
                    -- Change Directory up a level
                    ["u"] = fb_actions.goto_parent_dir,
                    -- Toggle hidden files
                    ["s"] = fb_actions.toggle_hidden,

                    -- Unmap tab. It can select files and directories without meaning
                    -- to if used to navigate the browser dir structure. When using
                    -- remove the dirs selected will be deleted along with the intentinal
                    -- files or directory.
                    ["<Tab>"] = false,
                    ["<S-Tab>"] = false,
                },
            },
        },
        command_palette = {
            { "Bookmarks",
                { "Browse Notes",    ":lua require('utils').browse_notes()" },
                { "Search Notes",    ":lua require('utils').search_notes()" },
                { "Browse Home",     ":lua require('utils').browse_home()" },
                { "Browse Config",   ":lua require('utils').browse_config()" },
                { "Browse Data",     ":lua require('utils').browse_data()" },
                { "Browse Cache",    ":lua require('utils').browse_cache()" },
                { "Browse Sites",    ":lua require('utils').browse_sites()" },
                { "Browse Projects", ":lua require('utils').browse_projects()" },
            },
            { "Neovim",
                { "Reload Neovim", ":source $MYVIMRC" },
                { "Check Health",  ":checkhealth" },
            },
            { "File",
                { "save current file", ':w' },
                { "quit",              ':qa' },
            },
            { "History",
                { "Command History", ":lua require('telescope.builtin').command_history()" },
                { "Search History",  ":lua require('telescope.builtin').search_history()" },
            },
            { "Telescope",
                { "MRU",                      ":lua require('telescope.builtin').oldfiles()" },
                { "File Browser",             ":lua require('telescope').extensions.file_browser.file_browser()" },
                { "Find Files",               ":lua require('telescope.builtin').find_files()" },
                { "Fuzzy Find Infile",        ":lua require('telescope.builtin').current_buffer_fuzzy_find()" },
                { "Buffers",                  ":lua require('telescope.builtin').buffers()" },
                { "Jump List",                ":lua require('utils').search_jumps()" },
                { "Marks List",               ":lua require('telescope.builtin').marks()" },
                { "Tags - Current Directory", ":lua require('utils').search_tags()" },
                { "Tags - Current Files",     ":lua require('telescope.builtin').tagstack()" },
            },
            { "LSP",
                { "LSP References",       ":lua require('telescope.builtin').lsp_references()" },
                { "LSP Definitions",      ":lua require('telescope.builtin').lsp_definitions()" },
                { "LSP Type Definitions", ":lua require('telescope.builtin').lsp_type_definitions()" },
                { "LSP Implementations",  ":lua require('telescope.builtin').lsp_implementations()" },
                { "LSP Document Symbol",  ":lua require('telescope.builtin').lsp_document_symbols()" },
                --{ "Location List", ":lua require('telescope.builtin').loclist()" },
            },
        }
    },
}

-- File Browser Extension

require("telescope").load_extension("file_browser")

-- Command apllete

require('telescope').load_extension('command_palette')
