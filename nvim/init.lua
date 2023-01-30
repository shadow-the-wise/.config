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

local ok, res = pcall(require, 'commands.init')
if not ok then
    vim.notify(res, vim.log.levels.ERROR)
else
    require('commands.init')
end

-- [Options] Internal variables and switches which can be set by the user.

local ok, res = pcall(require, 'options.init')
if not ok then
    vim.notify(res, vim.log.levels.ERROR)
else
    require('options.init')
end

-- [Keymappings] Used to invoke keyboard shortcuts.

local ok, res = pcall(require, 'keymaps.init')
if not ok then
    vim.notify(res, vim.log.levels.ERROR)
else
    require('keymaps.init')
end

-- [LSP] Language server configuration.

local ok, res = pcall(require, 'lsp.init')
if not ok then
    vim.notify(res, vim.log.levels.ERROR)
else
    require('lsp.init')
end
