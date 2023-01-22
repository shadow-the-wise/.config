local set = vim.opt

--  Version control

set.wildignore = { '.hg', '.git', '.svn' }

-- LaTeX intermediate files

set.wildignore = { '*.aux' ,'*.out', '*.toc' }

-- binary images

set.wildignore = { '*.jpg', '*.bmp', '*.gif', '*.png', '*.jpeg' }

-- compiled object files

set.wildignore = { '*.o', '*.obj', '*.exe', '*.dll', '*.manifest' }

-- mac osx and linux

set.wildignore = { '*/tmp/*', '*.so', '*.swp', '*.zip' }

-- compiled spelling word lists

set.wildignore = { '*.spl' }

--  vim swap files

set.wildignore = { '*.sw?' }

-- OSX bullshit

set.wildignore = { '*.DS_Store' }

-- database

set.wildignore = { '*.db' }

-- programming languages

set.wildignore = { '*/node_modules/*', '_site', '*/__pycache__/', '*/venv/*', '*/target/*' }

set.wildignore = { '*/.vim$', '*/.log', '*/.aux', '*/.cls', '*/.aux', '*/.bbl', '*/.blg', '*/.fls' }

set.wildignore = { '*/.fdb*/', '*/.toc', '*/.out', '*/.glo', '*/.log', '*/.ist', '*/.fdb_latexmk' }
