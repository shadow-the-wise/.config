local set = vim.opt

-- [Search]

-- If the 'ignorecase' option is on, the case of normal letters is ignored.
-- 'smartcase' can be set to ignore case when the pattern contains lowercase
-- letters only

set.ignorecase = true

-- Override the 'ignorecase' option if the search pattern contains upper case
-- characters.

set.smartcase = true

-- While typing a search command, show where the pattern is matched.

set.incsearch = true

-- last search pattern highlighting

set.hlsearch = true

-- When on, the :substitute flag 'g' is default on.

set.gdefault = true

-- For regular expression
set.magic = true

