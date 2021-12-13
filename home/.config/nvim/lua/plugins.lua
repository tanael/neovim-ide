require "paq" {
    "savq/paq-nvim"; -- use packer instead

    -- treesitter
    "nvim-treesitter/nvim-treesitter";

    -- lsp
    "neovim/nvim-lspconfig";
    "williamboman/nvim-lsp-installer";

    -- completion
    "hrsh7th/cmp-nvim-lsp";
    "hrsh7th/cmp-buffer";
    "hrsh7th/cmp-path";
    "hrsh7th/cmp-cmdline";
    "hrsh7th/cmp-vsnip";
    "hrsh7th/vim-vsnip";
    "hrsh7th/nvim-cmp";

    -- easy config
    "svermeulen/vimpeccable";

    -- colorscheme
    "EdenEast/nightfox.nvim";

    -- line & fonts
    "nvim-lualine/lualine.nvim";
    "kyazdani42/nvim-web-devicons";

    -- file explorer
    "kyazdani42/nvim-tree.lua";

    -- buffer
    "qpkorr/vim-bufkill";

    -- edition
    "tpope/vim-commentary";

    -- fuzzy search
    "ibhagwan/fzf-lua"; -- move to telescope with 0.6.0

    -- git
    "airblade/vim-gitgutter";
    "tpope/vim-fugitive";

    -- register
    "tversteeg/registers.nvim";

    -- diagnostics
    "folke/trouble.nvim";
}
