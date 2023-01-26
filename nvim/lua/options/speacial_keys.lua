local set = vim.opt

-- leader key (spacebar) ???????????????????????

vim.g.mapleader = " "

-- backspace

-- set.backspace = [[indent, eol, start]]

-- updatetime swap file is writen and CursorHold used for highlighting

set.updatetime = 100

-- Copy text from external source using C-c and paste with p

set.clipboard:append { 'unnamed', 'unnamedplus' }
