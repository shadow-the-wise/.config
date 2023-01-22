local set = vim.opt

-- FORMAT

-- Remove comment leader when joining comments.

set.formatoptions = [[j]]

-- Smart auto indenting inside numbed lists

set.formatoptions = [[n]]

-- J join two lines at .

set.joinspaces = false

-- INDENT

-- When changing the indent of the current line, preserve as much of the
-- indent structure as possible.

set.preserveindent = true

-- Vim will wrap long lines at a character in 'breakat' rather than at the last
-- character that fits on the screen.

set.linebreak = true

-- Every wrapped line will continue visually indented (same amount of space as
-- the beginning of that line), thus preserving horizontal blocks of text.

set.breakindent = true

-- Copy indent from current line when starting a new line.

set.autoindent = true

-- TAB

-- Converts tab to space. If your using listchars its better to explicitly set
-- to noexpand. So the tabs show up.

set.expandtab = true

-- Number of spaces that a <Tab> in the file counts for

set.tabstop = 4

-- Number of spaces to use for each step of (auto)indent.

set.shiftwidth = 4

-- Number of spaces to reduce each step of (auto)indent.

set.softtabstop = 4

-- Always indent by multiples of shiftwidth

set.shiftround = true

-- at the beginning of the line, insert spaces according to shiftwidth

set.smarttab = true

-- LIST CHARS

-- chars to show eol, trailing the carat and as space when tabing

set.list = true

-- set.listchars = { tab = '│', trail = '•', extends = '❯', precedes = '❮' }

-- When the terminal is more compact this indicates breaks

set.showbreak = '↪'

-- diff and VertSplit devide

set.fillchars = { diff = '⣿' }

set.fillchars = { vert = '▏' }

-- SPELLING

-- The active spell checking dictionary, when spell checking is enabled.

-- set.complete+=kspell

-- set.dictionary+=/usr/share/dict/words

