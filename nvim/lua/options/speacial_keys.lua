local set = vim.opt

-- Leader key (spacebar) ???????????????????????

vim.g.mapleader = " "

-- Backspace

-- set.backspace = [[indent, eol, start]]

-- Updatetime swap file is writen and CursorHold used for highlighting

set.updatetime = 100

-- Copy text from external source using C-c and paste with p

set.clipboard:append { 'unnamed', 'unnamedplus' }

-- Use 256 Hex colors

if vim.fn.has("termguicolors") == 1 then
    set.termguicolors = true
end
