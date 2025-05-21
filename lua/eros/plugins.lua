local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- Aprendizado do Vim
  { "ThePrimeagen/vim-be-good" },
  { "folke/which-key.nvim" },
  { "wikitopian/hardmode" },
  { "johngrib/vim-game-code-break" },

  -- Produtividade e navegação
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-lualine/lualine.nvim" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "kylechui/nvim-surround" },

  -- LSP e autocompletar
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },

  -- Comentários
  { "numToStr/Comment.nvim" },

  -- Temas
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "folke/tokyonight.nvim" },
  { "navarasu/onedark.nvim" },

  -- Integração com Jupyter Notebooks
  { "benlubas/molten-nvim" },
})
