-- Personal Functions

-- Assign an empty table to the local variable M

local M = {}

-- Browse Notes

function M.browse_notes()
  require("telescope").extensions.file_browser.file_browser {
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
  require("telescope").extensions.file_browser.file_browser {
    prompt_title = "Home Directory",
    prompt_prefix = "❯",
    cwd = "$HOME",
  }
end

-- Config

function M.browse_config()
  require("telescope").extensions.file_browser.file_browser {
    prompt_title = "Browse Config",
    prompt_prefix = "❯",
    cwd = "$HOME/.config",
  }
end

-- Cache

function M.browse_cache()
  require("telescope").extensions.file_browser.file_browser {
    prompt_title = "Browse Cache",
    prompt_prefix = "❯",
    cwd = "$HOME/.cache",
  }
end
-- Data

function M.browse_data()
  require("telescope").extensions.file_browser.file_browser {
    prompt_title = "Browse Data",
    prompt_prefix = "❯",
    cwd = "$HOME/.local/share/nvim",
  }
end

-- Sites

function M.browse_sites()
  require("telescope").extensions.file_browser.file_browser {
    prompt_title = "Browse Sites",
    prompt_prefix = "❯",
    cwd = "$HOME/Sites",
  }
end

-- Projects

function M.browse_projects()
  require("telescope").extensions.file_browser.file_browser {
    prompt_title = "Browse Projects",
    prompt_prefix = "❯",
    cwd = "$HOME/Code/Ruby/Projects",
  }
end

-- Since the M table is scoped, it has to be returned for usage elsewhere

return M
