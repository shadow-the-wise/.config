local key_map = vim.api.nvim_set_keymap

-- Normal Mode

-- Navigation

key_map("n", "j", "gj", { noremap = true, desc = "Navigation - Up with better wrap" })
key_map("n", "k", "gk", { noremap = true, desc = "Navigation - Down with better wrap" })

-- Navigation - windows

key_map("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Navigation - Up: Split pane" })
key_map("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Navigation - Down: Split pane"})
key_map("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Navigation - Left: Split pane" })
key_map("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Navigation - Right: Split pane" })

-- Navigation - line

key_map("n", "<C-h>", "<home>", { noremap = true, desc = "Navigation - Begining of line" })
key_map("n", "<C-l>", "<end>", { noremap = true, desc = "Navigation - Enf of line"})


-- Resize Windows

key_map("n", "<S-Up", ":resize +2", { noremap = true, desc = "Resize Up - split window" })
key_map("n", "<S-Down", ":resize -2", { noremap = true, desc = "Resize Down - split window" })
key_map("n", "<S-Left", ":vertical resize +2", { noremap = true, desc = "Resize Left - split window" })
key_map("n", "<S-Right", ":vertical resize -2", { noremap = true, desc = "Resize Right - split window" })

-- Search

key_map("n", "n", "nzzzv", { noremap = true, desc = "Search and center the results" })
key_map("n", "N", "Nzzzv", { noremap = true, desc = "Reverse Search and center the results" })

key_map("n", "<leader><space>", ":noh", { noremap = true, desc = "Clear Highlight Search" })

-- Jumps

key_map("n", "<c-o>", "<c-o>zz", { noremap = true, desc = "Jump backward and center the results" })
key_map("n", "<c-i>", "<c-i>zz", { noremap = true, desc = "Jump forward and center the results" })

-- Insert Mode

key_map("i", "jj", "<Esc>", { noremap = true, desc = "Exit insert mode" })


