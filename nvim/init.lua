-------------------------------------------------------------------------------
-- Title: Nvim Configuration File
-- Date: January 21, 2023
-- Language: Lua
-------------------------------------------------------------------------------

-- LUA

-- load the plugin manager and plugins

require('load_plugins')

-- aug Commands

require('commands')

-- options

require('options.speacial_keys')
require('options.screen')
require('options.command_window')
require('options.navigation')
require('options.ignore')
require('options.data')
require('options.formatting')

-- maps

require('keymaps.navigation')
require('keymaps.change_list')
require('keymaps.jump_list')
require('keymaps.search')
require('keymaps.resize')
require('keymaps.telescope')

-- plugins

require('plugins.hop')
require('plugins.telescope')
require('plugins.rainbow')
require('plugins.indent')
require('plugins.lua_line')

