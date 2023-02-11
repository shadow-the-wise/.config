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
-- Plugins location
-- ~/.local/share/nvim/site/pack/packer/start/

require('load_plugins')

-- [Aug Commands]

-- You can specify commands to be executed automatically when reading or
-- writing a file, when entering or leaving a buffer or window, and when
-- exiting Vim.

local commands_ok, command_response = pcall(require, 'commands.init')
if not commands_ok then
    vim.notify(command_response, vim.log.levels.ERROR)
else
    require('commands.init')
end

-- [Options] Internal variables and switches which can be set by the user.

local options_ok, options_response = pcall(require, 'options.init')
if not options_ok then
    vim.notify(options_response, vim.log.levels.ERROR)
else
    require('options.init')
end

-- [Keymappings] Used to invoke keyboard shortcuts.

local keymaps_ok, keymaps_response = pcall(require, 'keymaps.init')
if not keymaps_ok then
    vim.notify(keymaps_response, vim.log.levels.ERROR)
else
    require('keymaps.init')
end

-- [LSP] Language server configuration.

local lsp_ok, lsp_response = pcall(require, 'lsp.init')
if not lsp_ok then
    vim.notify(lsp_response, vim.log.levels.ERROR)
else
    require('lsp.init')
end


-- [LSP] Language server configuration.

local colors_ok, colors_response = pcall(require, 'colors.init')
if not colors_ok then
    vim.notify(colors_response, vim.log.levels.ERROR)
else
    require('colors.init')
end
