local set = vim.opt

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

