"==============================================================================
" Plugins
"==============================================================================

" auto-install vim-plug
if empty(glob("$XDG_DATA_HOME/nvim/site/autoload/plug.vim"))
  silent !curl -fLo $XDG_DATA_HOME/nvim/site/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Call plugged package manager
"
call plug#begin("$XDG_DATA_HOME/nvim/plugged")

"------------------------------------------------------------------------------
" Git
"------------------------------------------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"------------------------------------------------------------------------------
" Snippets
"------------------------------------------------------------------------------
Plug 'honza/vim-snippets'

if has("nvim")

"------------------------------------------------------------------------------
"   Indenting
"------------------------------------------------------------------------------
    Plug 'lukas-reineke/indent-blankline.nvim'
"------------------------------------------------------------------------------
"   ColorScheme
"------------------------------------------------------------------------------
    Plug 'overcache/NeoSolarized'
"------------------------------------------------------------------------------
"   Braces
"------------------------------------------------------------------------------
    Plug 'frazrepo/vim-rainbow'
"------------------------------------------------------------------------------
"   Navigation
"------------------------------------------------------------------------------
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'nvim-telescope/telescope-project.nvim'

    Plug 'rhysd/clever-f.vim'
    Plug 'phaazon/hop.nvim'

    Plug 'nvim-lua/plenary.nvim'
"------------------------------------------------------------------------------
"  Complation
"------------------------------------------------------------------------------
    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif


call plug#end()

"coc.nvim will install extensions that are not installed in this list.
