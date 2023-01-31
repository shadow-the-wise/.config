-- nvim settings for the command window

local command_window_ok, command_window_response = pcall(require, 'options.command_window')
if not command_window_ok then
    vim.notify(command_window_response, vim.log.levels.ERROR)
else
    require('options.command_window')
end

-- nvim settings for tabs

local tabs_ok, tabs_response = pcall(require, 'options.tab')
if not tabs_ok then
    vim.notify(tabs_response, vim.log.levels.ERROR)
else
    require('options.tab')
end

-- nvim settings for data

local data_ok, data_response = pcall(require, 'options.data')
if not data_ok then
    vim.notify(data_response, vim.log.levels.ERROR)
else
    require('options.data')
end

-- nvim settings for spell

local spell_ok, spell_response = pcall(require, 'options.spell')
if not spell_ok then
    vim.notify(spell_response, vim.log.levels.ERROR)
else
    require('options.data')
end

-- nvim settings for indent

local indent_ok, indent_response = pcall(require, 'options.indent')
if not indent_ok then
    vim.notify(indent_response, vim.log.levels.ERROR)
else
    require('options.indent')
end

-- nvim settings for ignore

local ignore_ok, ignore_response = pcall(require, 'options.ignore')
if not ignore_ok then
    vim.notify(ignore_response, vim.log.levels.ERROR)
else
    require('options.ignore')
end

-- nvim settings for screen

local screen_ok, screen_response = pcall(require, 'options.screen')
if not screen_ok then
    vim.notify(screen_response, vim.log.levels.ERROR)
else
    require('options.screen')
end

-- nvim settings for completion

local completion_ok, completion_response = pcall(require, 'options.completion')
if not completion_ok then
    vim.notify(completion_response, vim.log.levels.ERROR)
else
    require('options.completion')
end

-- nvim settings for search

local search_ok, search_response = pcall(require, 'options.search')
if not search_ok then
    vim.notify(search_response, vim.log.levels.ERROR)
else
    require('options.search')
end

-- nvim settings for search

local formatting_ok, formatting_response = pcall(require, 'options.formatting')
if not formatting_ok then
    vim.notify(formatting_response, vim.log.levels.ERROR)
else
    require('options.formatting')
end

-- nvim settings for list_chars

local list_chars_ok, list_chars_response = pcall(require, 'options.list_chars')
if not list_chars_ok then
    vim.notify(list_chars_response, vim.log.levels.ERROR)
else
    require('options.list_chars')
end

-- nvim settings for list_chars

local navigation_ok, navigation_response = pcall(require, 'options.navigation')
if not navigation_ok then
    vim.notify(navigation_response, vim.log.levels.ERROR)
else
    require('options.navigation')
end

-- nvim settings for list_chars

local speacial_keys_ok, speacial_keys_response = pcall(require, 'options.speacial_keys')
if not speacial_keys_ok then
    vim.notify(speacial_keys_response, vim.log.levels.ERROR)
else
    require('options.speacial_keys')
end
