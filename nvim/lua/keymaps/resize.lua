local key_map = vim.api.nvim_set_keymap

-- Resize Windows

key_map("n", "<S-Up>", "<CMD>resize +2<CR>", { noremap = true, desc = "Resize Up - split window"})
key_map("n", "<S-Down>", "<CMD>resize -2<CR>", { noremap = true, desc = "Resize Down - split window"})
key_map("n", "<S-Left>", "<CMD>vertical resize +2<CR>", { noremap = true, desc = "Resize Left - split window"})
key_map("n", "<S-Right>", "<CMD>vertical resize -2<CR>", { noremap = true, desc = "Resize Right - split window"})

-- Insert Mode

key_map("i", "jj", "<ESC>", { noremap = true, desc = "Exit insert mode" })


