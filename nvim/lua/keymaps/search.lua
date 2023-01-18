local key_map = vim.api.nvim_set_keymap

-- Search

key_map("n", "n", "nzzzv", { noremap = true, desc = "Search and center the results" })
key_map("n", "N", "Nzzzv", { noremap = true, desc = "Reverse Search and center the results" })
key_map("n", "*", "*<c-o>", { noremap = true, desc = "Star search implace" })

key_map("n", "<leader><space>", "<CMD>noh<CR>", { noremap = true, desc = "Clear Highlight Search" })
