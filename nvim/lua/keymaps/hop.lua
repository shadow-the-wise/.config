local key_map = vim.api.nvim_set_keymap
local hop = require("hop")
local directions = require('hop.hint').HintDirection

-- Search after the cursor

vim.keymap.set('n', 'F',
    function()
        hop.hint_char1({
            direction = directions.AFTER_CURSOR,
            current_line_only = false
        })
    end,
    {
        remap = true,
        desc = "Hop after the cursor"
    }
)

-- Search before the cursor

vim.keymap.set('n', 'f',
    function() hop.hint_char1({
        direction = directions.BEFORE_CURSOR,
        current_line_only = false
    })
    end,
    {
        remap = true,
        desc = "Hop before the cursor"
    }
)

-- Search for pattern

vim.keymap.set('n', '<leader>f',
    function() hop.hint_patterns({
        current_line_only = false
    })
    end,
    {
        remap = true,
        desc = "Hop pattern"
    }
)

