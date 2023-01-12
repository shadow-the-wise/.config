" search for a word by the letter
nnoremap <silent>\ :HopChar1<cr>

lua << EOF
    local hop = require("hop")

    hop.setup {
    case_insensitive = false,
    quit_key = "<Esc>",
    }
EOF

