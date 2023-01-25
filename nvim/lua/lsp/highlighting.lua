-- LSP CONFIG

-- Configure Highlighting


if client.server_capabilities.documentHighlightProvider then
  vim.cmd [[
    hi! LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
    hi! LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
    hi! LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
  ]]
  vim.api.nvim_create_augroup('lsp_document_highlight', {
    clear = false
  })
  vim.api.nvim_clear_autocmds({
    buffer = 0,
    group = 'lsp_document_highlight',
  })
  vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
    group = 'lsp_document_highlight',
    buffer = 0,
    callback = vim.lsp.buf.document_highlight,
  })
  vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
    group = 'lsp_document_highlight',
    buffer = 0,
    callback = vim.lsp.buf.clear_references,
  })
end

