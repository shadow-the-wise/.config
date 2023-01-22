local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    -- [Package MAnager]

    use 'wbthomason/packer.nvim'

    -- [StatusLine]
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- [Navigation]
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "nvim-telescope/telescope-file-browser.nvim" }
    use { "LinArcX/telescope-command-palette.nvim" }

    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }

    use { 'rhysd/clever-f.vim' }

    -- [Indentation]
    use { "lukas-reineke/indent-blankline.nvim" }

    -- [Braces]
    use { 'frazrepo/vim-rainbow' }

    -- [ColorScheme]
    use { 'arcticicestudio/nord-vim' }

    -- [Git]
    use  {'airblade/vim-gitgutter'}

    use { 'tpope/vim-fugitive' }

    -- [Complition]

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)





