-- [LSP] Language server configuration.

-- nvim language server protocal configuration

local lsp_config_ok, lsp_config_response = pcall(require, 'lsp.lsp_config')
if not lsp_config_ok then
    vim.notify(lsp_config_response, vim.log.levels.ERROR)
else
    require('lsp.lsp_config')
end

-- nvim language server protocal handlers

local handlers_ok, handlers_response = pcall(require, 'lsp.handlers')
if not handlers_ok then
    vim.notify(handlers_response, vim.log.levels.ERROR)
else
    require('lsp.handlers')
end

-- nvim language server protocal diagnostic

local diagnostic_ok, diagnostic_response = pcall(require, 'lsp.diagnostic')
if not diagnostic_ok then
    vim.notify(diagnostic_response, vim.log.levels.ERROR)
else
    require('lsp.diagnostic')
end
