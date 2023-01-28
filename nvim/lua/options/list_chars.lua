local set = vim.opt

-- LIST CHARS

-- List mode: By default, show tabs as ">", trailing spaces as "-", and non-breakable space characters as "+".

set.list = true

-- chars to show eol, trailing the carat and as space when tabing

set.listchars = { tab = '--', trail = '-', extends = '❯', precedes = '❮' }


set.showbreak = '↪'

-- diff and VertSplit devide

set.fillchars = { diff = '⣿' }

set.fillchars = { vert = '▏' }
