-- nvim keymaps for the changelist

local change_list_ok, change_list_response = pcall(require, 'keymaps.change_list')
if not change_list_ok then
    vim.notify(change_list_response, vim.log.levels.ERROR)
else
    require('keymaps.change_list')
end

-- nvim keymaps for he hop plugin

local hop_ok, hop_response = pcall(require, 'keymaps.hop')
if not hop_ok then
    vim.notify(hop_response, vim.log.levels.ERROR)
else
    require('keymaps.hop')
end

-- nvim keymaps for the jump list (page and in page jumps)

local jump_list_ok, jump_list_response = pcall(require, 'keymaps.jump_list')
if not jump_list_ok then
    vim.notify(jump_list_response, vim.log.levels.ERROR)
else
    require('keymaps.jump_list')
end

-- nvim keymaps for navigating the document or windows and splits

local navigation_ok, navigation_response = pcall(require, 'keymaps.navigation')
if not navigation_ok then
    vim.notify(navigation_response, vim.log.levels.ERROR)
else
    require('keymaps.navigation')
end

-- nvim keymaps for resizing splits

local resize_ok, resize_response = pcall(require, 'keymaps.resize')
if not resize_ok then
    vim.notify(resize_response, vim.log.levels.ERROR)
else
    require('keymaps.resize')
end

-- nvim keymaps for the searching a document

local search_ok, search_response = pcall(require, 'keymaps.search')
if not search_ok then
    vim.notify(search_response, vim.log.levels.ERROR)
else
    require('keymaps.search')
end

-- nvim keymaps for the telescope plugin

local telescope_ok, telescope_response = pcall(require, 'keymaps.telescope')
if not telescope_ok then
    vim.notify(telescope_response, vim.log.levels.ERROR)
else
    require('keymaps.telescope')
end


-- nvim keymaps for the diagnostics

local diagnostics_ok, diagnostics_response = pcall(require, 'keymaps.diagnostics')
if not diagnostics_ok then
    vim.notify(diagnostics_response, vim.log.levels.ERROR)
else
    require('keymaps.diagnostics')
end


-- nvim keymaps for the yanks

local yanks_ok, yanks_response = pcall(require, 'keymaps.yanks')
if not yanks_ok then
    vim.notify(yanks_response, vim.log.levels.ERROR)
else
    require('keymaps.yanks')
end
