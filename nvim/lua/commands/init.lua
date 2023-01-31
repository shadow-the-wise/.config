-- nvim commands for custom spellfile.

local spell_ok, spell_response = pcall(require, 'commands.spell')
if not spell_ok then
    vim.notify(spell_response, vim.log.levels.ERROR)
else
    require('commands.spell')
end

-- nvim basic commands (not easily sub categorised).

local basic_ok, basic_response = pcall(require, 'commands.basic')
if not basic_ok then
    vim.notify(basic_response, vim.log.levels.ERROR)
else
    require('commands.basic')
end

-- nvim commands for quitting windows.

local quits_ok, quits_response = pcall(require, 'commands.quits')
if not quits_ok then
    vim.notify(quits_response, vim.log.levels.ERROR)
else
    require('commands.quits')
end

-- nvim commands skeleton files.

local skeletons_ok, skeletons_response = pcall(require, 'commands.skeletons')
if not skeletons_ok then
    vim.notify(skeletons_response, vim.log.levels.ERROR)
else
    require('commands.skeletons')
end

-- nvim commands for auto correction using the abbrevs file.

local autocorrect_ok, autocorrect_response = pcall(require, 'commands.autocorrect')
if not autocorrect_ok then
    vim.notify(autocorrect_response, vim.log.levels.ERROR)
else
    require('commands.autocorrect')
end
