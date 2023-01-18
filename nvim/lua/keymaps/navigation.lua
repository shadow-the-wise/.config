local key_map = vim.api.nvim_set_keymap

-- Normal Mode

-- Navigation

key_map("n", "j", "gj", { noremap = true, desc = "Navigation - Up with better wrap" })
key_map("n", "k", "gk", { noremap = true, desc = "Navigation - Down with better wrap" })

-- Navigation - windows

key_map("n", "<C-J>", "<C-W>j", { noremap = true, desc = "Navigation - Up Split pane" })
key_map("n", "<C-K>", "<C-W>k", { noremap = true, desc = "Navigation - Down Split pane"})
key_map("n", "<C-H>", "<C-W>h", { noremap = true, desc = "Navigation - Left Split pane" })
key_map("n", "<C-L>", "<C-W>l", { noremap = true, desc = "Navigation - Right Split pane" })

-- Navigation - line

key_map("n", "<S-H>", "<HOME>", { noremap = true, desc = "Navigation - Begining of line" })
key_map("n", "<S-L>", "<END>", { noremap = true, desc = "Navigation - Enf of line"})


