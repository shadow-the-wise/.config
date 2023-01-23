local set = vim.opt

-- LIST CHARS

-- chars to show eol, trailing the carat and as space when tabing

set.list = true

-- set.listchars = { tab = '│', trail = '•', extends = '❯', precedes = '❮' }

-- When the terminal is more compact this indicates breaks

set.showbreak = '↪'

-- diff and VertSplit devide

set.fillchars = { diff = '⣿' }

set.fillchars = { vert = '▏' }

