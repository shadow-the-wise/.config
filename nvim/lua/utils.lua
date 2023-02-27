-- Personal Functions

local telescope = require("telescope")

-- Assign an empty table to the local variable M

local M = {}

-- Grep Notes

function M.grep_notes()
    require("telescope.builtin").live_grep({
        prompt_title = "Grep Notes",
        prompt_prefix = "❯",
        cwd = "$HOME/.notes/",
        shorten_path = true
    })
end

-- Browse Notes

function M.browse_notes()
    telescope.extensions.file_browser.file_browser {
        prompt_title = "Browse Notes",
        prompt_prefix = "❯",
        cwd = "$HOME/.notes/",
    }
end

-- Search Notes

function M.search_notes()
    require("telescope.builtin").find_files {
        cwd = "$HOME/.notes",
        prompt_title = "< Notes >",
        prompt_prefix = "❯",
        results_title = "Found Files",
        path_display = { "smart" },
    }
end

-- Search Jumps List

function M.search_jumps()
    require("telescope.builtin").jumplist {
        prompt_title = "< Jumps >",
        path_display = { "smart" },
    }
end

-- Search Note Tags

function M.search_tags()
    require("telescope.builtin").tags {
        prompt_title = "< Tags >",
        path_display = { "smart" },
    }
end

-- Home directory

function M.browse_home()
    telescope.extensions.file_browser.file_browser {
        prompt_title = "Home Directory",
        prompt_prefix = "❯",
        cwd = "$HOME",
    }
end

-- Config

function M.browse_config()
    telescope.extensions.file_browser.file_browser {
        prompt_title = "Browse Config",
        prompt_prefix = "❯",
        cwd = "$HOME/.config",
    }
end

-- Cache

function M.browse_cache()
    telescope.extensions.file_browser.file_browser {
        prompt_title = "Browse Cache",
        prompt_prefix = "❯",
        cwd = "$HOME/.cache",
    }
end

-- Data

function M.browse_data()
    telescope.extensions.file_browser.file_browser {
        prompt_title = "Browse Data",
        prompt_prefix = "❯",
        cwd = "$HOME/.local/share/nvim",
    }
end

-- Sites

function M.browse_sites()
    telescope.extensions.file_browser.file_browser {
        prompt_title = "Browse Sites",
        prompt_prefix = "❯",
        cwd = "$HOME/Sites",
    }
end

-- Projects

function M.browse_projects()
    telescope.extensions.file_browser.file_browser {
        prompt_title = "Browse Projects",
        prompt_prefix = "❯",
        cwd = "$HOME/Code/Ruby/Projects",
    }
end

-- Since the M table is scoped, it has to be returned for usage elsewhere

return M
