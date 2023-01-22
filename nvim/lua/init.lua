-------------------------------------------------------------------------------
-- Title: Nvim Configuration File
-- Date: January 21, 2023
-- Language: Lua
-------------------------------------------------------------------------------

-- LUA

-- load the plugin manager and plugins

lua require('load_plugins')

-- aug Commands

lua require('commands')

-- options

lua require('options.screen')
lua require('options.command_window')
lua require('options.navigation')
lua require('options.ignore')
lua require('options.data')
lua require('options.formatting')

-- maps

lua require('keymaps.navigation')
lua require('keymaps.change_list')
lua require('keymaps.jump_list')
lua require('keymaps.search')
lua require('keymaps.resize')
lua require('keymaps.telescope')
lua require('keymaps.coc')

