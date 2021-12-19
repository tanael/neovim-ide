local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  -- My plugins here
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- completion
  use { "hrsh7th/nvim-cmp",
    requires = {
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'neovim/nvim-lspconfig'
    }
  }

  -- easy config
  use "svermeulen/vimpeccable"

  -- colorschemes
  use "EdenEast/nightfox.nvim"
  -- use 'navarasu/onedark.nvim'
  -- use 'marko-cerovac/material.nvim'

  -- line & fonts
  use { "nvim-lualine/lualine.nvim",
    requires = "kyazdani42/nvim-web-devicons"
  }

  -- file explorer
  use "kyazdani42/nvim-tree.lua"

  -- buffers
  use "qpkorr/vim-bufkill"
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- edition
  use "tpope/vim-commentary"
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  -- fuzzy search
  use "ibhagwan/fzf-lua" -- move to telescope with 0.6.0

  -- git
  use "airblade/vim-gitgutter"
  use "tpope/vim-fugitive"

  -- register
  use "tversteeg/registers.nvim"

  -- diagnostics
  use { "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  -- markdown
  use { "ellisonleao/glow.nvim" }

  -- project management
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {}
    end
  }
  -- todo finder
  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {}
  end
  }

  -- dashboard
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.opts)
    end
  }

  -- key mapping
  use {
    'AckslD/nvim-whichkey-setup.lua',
    requires = {'liuchengxu/vim-which-key'},
  }

  -- Keep this at the end
  -- Automatically set up my configuration after cloning packer.nvim
  if Packer_bootstrap then
    require('packer').sync()
  end
end)
