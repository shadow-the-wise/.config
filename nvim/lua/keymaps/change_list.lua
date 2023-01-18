local key_map = vim.api.nvim_set_keymap

-- Changes (last insert mode changes, comparable to jumps)

key_map("n", "g;", "g;zz", { noremap = true, desc = "Last change list forward" })
key_map("n", "g,", "g,zz", { noremap = true, desc = "Last change list bacward" })
