require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'nord',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diagnostics' },
        lualine_c = { { 'diff',

            -- Displays a colored diff status if set to true
            colored = true,

            -- Changes the symbols used by the diff.
            symbols = { added = '+', modified = '~', removed = '-' },

            -- A function that works as a data source for diff.
            -- It must return a table as such:
            --   { added = add_count, modified = modified_count, removed = removed_count }
            -- or nil on failure. count <= 0 won't be displayed.
            source = nil,
        } },
        lualine_x = { 'encoding' },
        lualine_y = { 'fileformat' },
        lualine_z = { 'filetype' }
        --lualine_y = { 'progress' },
        --lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
        lualine_c = { { 'buffers',
            show_filename_only = true,
            hide_filename_extension = false,
            show_modified_status = true,
            mode = 4,
            symbols = {
                -- symbols dor mod, alt file and directory
                modified = ' ●',
                alternate_file = '#',
                directory = '',
            },
            buffers_color = {
                active = 'lualine_c_normal',
                inactive = 'lualine_c_inactive',
            }
        } },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
