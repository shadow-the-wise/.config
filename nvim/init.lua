-------------------------------------------------------------------------------
-- Title: Nvim Configuration File
-- Date: January 21, 2023
-- Language: Lua
-------------------------------------------------------------------------------

-- [Plugin Manager]

-- Plugin manager for Neovim. That uses native packages, supports Luarocks
-- dependencies and is written in Lua.
--
-- All plugin configuration files are located at ~/.config/nvim/plugin
-- This dir is on the runtime path and does not need a require in init.lua

require('load_plugins')


-- [Aug Commands]

-- You can specify commands to be executed automatically when reading or
-- writing a file, when entering or leaving a buffer or window, and when
-- exiting Vim.

require('commands.basic')
require('commands.skeletons')
require('commands.spell')
require('commands.quits')
require('commands.autocorrect')

-- [Options] Internal variables and switches which can be set by the user.

require('options.command_window')
require('options.completion')
require('options.data')
require('options.formatting')
require('options.ignore')
require('options.indent')
require('options.list_chars')
require('options.navigation')
require('options.screen')
require('options.search')
require('options.speacial_keys')
require('options.tab')
require('options.spell')

-- [Maps] Keymappings used to invoke shortcuts.

require('keymaps.navigation')
require('keymaps.change_list')
require('keymaps.jump_list')
require('keymaps.search')
require('keymaps.resize')
require('keymaps.telescope')
require('keymaps.hop')

-- [LSP] Language server configuration.

require('lsp.lsp_config')
require('lsp.diagnostic')
require('lsp.handlers')
-- require('lsp.null_ls')
-- require('lsp.highlighting')
