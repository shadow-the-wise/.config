local key_map = vim.api.nvim_set_keymap

key_map("n", "\\", "<CMD>HopChar1<CR>", { silent = true, desc = "Hop to word" })



