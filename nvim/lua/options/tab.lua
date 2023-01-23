local set = vim.opt

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

