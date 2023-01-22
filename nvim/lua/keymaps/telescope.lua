local key_map = vim.api.nvim_set_keymap

-- File Browser

key_map("n", "<leader>fb", "<CMD>Telescope file_browser<CR>", {noremap = true, desc = "File browser"})

-- MRU

key_map("n", "<leader>m", "<CMD>Telescope oldfiles<CR>", {noremap = true, desc = "MRU"})

-- Find Files

key_map("n", "<leader>ff", "<CMD>Telescope find_files<CR>", {noremap = true, desc = "Find files"})

-- Help Tags

key_map("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", {noremap = true, desc = "Help tags"})

-- Command Pallette

key_map("n", "<leader>b", "<CMD>Telescope command_palette<CR>", {noremap = true, desc = "Command pallette"})
