
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

-- Since the M table is scoped, it has to be returned for usage elsewhere

return M
