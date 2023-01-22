local set = vim.opt

-- NAVIGATION

-- vim will change the current dir when you swich buffers or open new files

set.autochdir = true

-- hide buffers without unsaved changes without being prompted

set.hidden = true

-- read file again if it has changed outside of vim while open

set.autoread = true

-- set to 999 the cursor will stay in the middle when scrolling

set.scrolloff = 999

-- minimum number of columns to scroll horizontaly

set.sidescroll = 1

-- The minimal number of screen columns to keep to the left and to the
-- right of the cursor if 'nowrap' is set

set.sidescrolloff = 100

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


-- This will check the current folder for tags file and keep going one directory
-- up all the way to the root folder. So you can be in any sub-folder in your
-- project and it'll be able to find the tags files.

-- set tags = tags;/
