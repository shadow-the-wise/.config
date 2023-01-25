local set = vim.opt
local config_dir = vim.env.XDG_CONFIG_HOME

-- turn spellcheck off until explicitly set

set.spell = false

-- set spell language

set.spelllang = "en_gb"

-- [spell options]

-- When a word is CamelCased, assume "Cased" is a separate word.
-- Only spellcheck a buffer when 'syntax' is enabled
-- TODO: spell check (def|class|if) and comments.

set.spelloptions = "camel,noplainbuffer"

-- Set spell file location

set.spellfile = config_dir .. '/nvim/spell/custom-dictionary.utf-8.add'

