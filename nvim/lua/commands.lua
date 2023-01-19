-- Aug Commands

vim.cmd[[colorscheme nord]]

-- Highlight the symbol and its references on a CursorHold event(cursor is idle)

vim.api.nvim_create_autocmd({ "CursorHold" }, {
    desc = "Highlight symbol under cursor on CursorHold",
    command = "silent call CocActionAsync('highlight')"
})

-- Remove white space

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  desc = "Remove white space",
  pattern = { "*" },
  command = [[%s/\s\+$//e]]
})

-- Highlight text on yank

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 150 }
  end,
})

