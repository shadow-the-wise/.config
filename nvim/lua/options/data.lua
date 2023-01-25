local set = vim.opt
local data_dir = vim.env.XDG_DATA_HOME

-- History files (undo, swap and backup)

-- There is a specific reason these files are stored in the XDG_DATA_HOME
-- and not the XDG_CACHE_HOME. The cache should only contain data that is
-- non-essential. Clearing the cache should not have an impact on Nvims
-- functionality. Hence, the Cache is for reproducible data only.

-- Command line history file size

set.history = 1000

-- Save the whole buffer for undo when reloading it

set.undoreload = 10000
set.undofile = true
set.undodir = data_dir .. '/nvim/undo/'


-- If you write to an existing file (but do not append) while the 'backup',
-- 'writebackup' or 'patchmode' option is on, a backup of the original file is
-- made.

set.backup = true
set.backupdir = data_dir .. '/nvim/backup/'

-- Do not create a swapfile

set.swapfile = false
set.directory = data_dir .. '/nvim/swap/'

