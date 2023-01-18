local key_map = vim.api.nvim_set_keymap

-- Diagnostic jumps

key_map("nmap", "<silent> [g", "<PLUG>(coc-diagnostic-prev)", { noremap = true, desc = "" })
key_map("nmap", "<silent> ]g", "<PLUG>(coc-diagnostic-next)", { noremap = true, desc = "" })

-- GoTO code navigation

key_map("nmap", "<silent> gd", "<PLUG>(coc-definition)", { noremap = true, desc = "" })
key_map("nmap", "<silent> gy", "<PLUG>(coc-type-definition)", { noremap = true, desc = "" })
key_map("nmap", "<silent> gi", "<PLUG>(coc-implementation)", { noremap = true, desc = "" })
key_map("nmap", "<silent> gr", "<PLUG>(coc-references)", { noremap = true, desc = "" })

-- navigation diagnostics

key_map("nmap", "<leader>rn", "<PLUG>(coc-rename)", { noremap = true, desc = "" })

-- refactor and rename symbol

key_map("nnoremap", "<silent>r", "<PLUG>(coc-refactor)", { noremap = true, desc = "" })

key_map("nnoremap", "<leader>a", "<CMD>CocList diagnostics<CR>", { noremap = true, desc = "" })
key_map("nnoremap", "<leader>o", "<CMD>CocList outline<CR>", { noremap = true, desc = "" })
key_map("nnoremap", "<leader>s", "<CMD>CocList -I symbols<CR>", { noremap = true, desc = "" })

