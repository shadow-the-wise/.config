local key_map = vim.api.nvim_set_keymap

-- Jumps (last jumped-to location)

key_map("n", "<c-o>", "<c-o>zz", { noremap = true, desc = "Jump backward and center the results" })
key_map("n", "<c-i>", "<c-i>zz", { noremap = true, desc = "Jump forward and center the results" })

