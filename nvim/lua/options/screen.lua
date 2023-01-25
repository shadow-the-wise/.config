local set = vim.opt

-- no splash screen

set.shortmess = [[I]]

-- numbers

set.number = true

set.relativenumber = true

-- highlight the cursorline

set.cursorline = true

-- keep cursor at the first char through jumps

set.startofline = false

-- textwidth

set.textwidth = 79

-- set the column at the 80px 1px after the textwidth

set.colorcolumn = [[80]]

-- concealed text is completely hidden unless it has a custom replacement
-- character defined

set.conceallevel = 2

-- always display the sign column

set.signcolumn = "yes:2"
