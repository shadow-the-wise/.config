local key_map = vim.api.nvim_set_keymap

-- Search for letter in current buffer

key_map('n', 'f', "<CMD>HopChar1<CR>", { desc = "Hop letter in current buffer" })

-- Search fot pattern in buffer

key_map('n', 'F', "<CMD>HopPattern<CR>", { desc = "Hop pattern in current buffer" })
