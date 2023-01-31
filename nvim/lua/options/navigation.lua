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
