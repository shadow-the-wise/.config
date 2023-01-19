local key_map = vim.api.nvim_set_keymap

-- Diagnostic jumps

key_map("n", "<silent> [g", "<PLUG>(coc-diagnostic-prev)", { noremap = true, desc = "" })
key_map("n", "<silent> ]g", "<PLUG>(coc-diagnostic-next)", { noremap = true, desc = "" })

-- GoTO code navigation

key_map("n", "gd", "<PLUG>(coc-definition)", { noremap = true, desc = "" })
key_map("n", "gy", "<PLUG>(coc-type-definition)", { noremap = true, desc = "" })
key_map("n", "gi", "<PLUG>(coc-implementation)", { noremap = true, desc = "" })
key_map("n", "gr", "<PLUG>(coc-references)", { noremap = true, desc = "" })

-- navigation diagnostics

key_map("n", "<leader>rn", "<PLUG>(coc-rename)", { noremap = true, desc = "" })

-- refactor and rename symbol

key_map("n", "<leader>r", "<PLUG>(coc-refactor)", { noremap = true, desc = "" })

key_map("n", "<leader>a", "<CMD>CocList diagnostics<CR>", { noremap = true, desc = "" })
key_map("n", "<leader>o", "<CMD>CocList outline<CR>", { noremap = true, desc = "" })
key_map("n", "<leader>s", "<CMD>CocList -I symbols<CR>", { noremap = true, desc = "" })
