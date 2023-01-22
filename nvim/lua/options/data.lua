local set = vim.opt
local data_dir = vim.env.XDG_DATA_HOME

-- command line history file size

set.history = 1000

-- set undo

set.undofile = true
set.undodir = data_dir .. '/nvim/undo/'

-- save the whole buffer for undo when reloading it

set.undoreload = 10000

-- If you write to an existing file (but do not append) while the 'backup',
-- 'writebackup' or 'patchmode' option is on, a backup of the original file is
-- made.

set.backup = true
set.backupdir = data_dir .. '/nvim/backup/'

-- set spell file location

set.spellfile = data_dir .. '/nvim/spell/custom-dictionary.utf-8.add'

-- do not create a swapfile

set.swapfile = false
set.directory = data_dir .. '/nvim/swap/'

