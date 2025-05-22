local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
{
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

      -- Banner ASCII personalizado
      dashboard.section.header.val = {
        "              _ood>H&H&Z?#M#b-.\\.",
        "          .\\HMMMMMR?`\\M6b.\"`' ''``v.",
        "       .. .MMMMMMMMMMHMMM#&.      ``~o.",
        "     .   ,HMMMMMMMMMMMM*\"'-`          &b.",
        "    .   .MMMMMMMMMMMMH'               `\"&\\",
        "   -     RMMMMM#H##R'                   4Mb",
        "  -      |7MMM'    ?::                 `|MMb",
        " /         HMM__#|`\"\\>?v..              `MMML",
        ".           `\"'#Hd|       `              9MMM:",
        "-                |\\,\\?HH#bbL             `9MMb",
        ":                   !MMMMMMMH#b,          `\"\"T",
        ".              .   ,MMMMMMMMMMMbo.           |",
        ":                  4MMMMMMMMMMMMMMMHo        |",
        ":                   ?MMMMMMMMMMMMMMM?        :",
        "-.                   `#MMMMMMMMMMMM:        .-",
        " :                     |MMMMMMMMMM?         .",
        "  -                    JMMMMMMMT'          :",
        "  `.                   MMMMMMH'           -",
        "    -.                |MMM#*`            -",
        "      .               HMH'            . '",
        "        -.            #H:.          .-",
        "          ` .           .\\       .-",
        "              '-..-+oodHL_,--/-`"
      }

      -- Frase de boas-vindas
      dashboard.section.footer.val = "Bem-vindo ao Neovim, Eros! Produtividade e aprendizado."

      -- Atalhos rápidos
      dashboard.section.buttons.val = {
        dashboard.button("e", "  Novo arquivo", ":enew<CR>"),
        dashboard.button("f", "  Encontrar arquivo", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Arquivos recentes", ":Telescope oldfiles<CR>"),
        dashboard.button("q", "  Sair", ":qa<CR>"),
      }

      -- Aplicar a configuração
      alpha.setup(dashboard.opts)
    end
  },

  -- Aprendizado do Vim
  { "ThePrimeagen/vim-be-good" },
  { "folke/which-key.nvim" },
  { "wikitopian/hardmode" },
  { "johngrib/vim-game-code-break" },

  -- Produtividade e navegação

{
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,           -- largura da árvore
        side = "left",       -- abre na lateral esquerda
        number = true,       -- mostra número da linha
        relativenumber = true, -- número relativo
      },
      renderer = {
        highlight_git = true, -- destaca status do git
        icons = {
          show = {
            git = true,     -- ícones de git
            folder = true,  -- ícones de pastas
            file = true,    -- ícones de arquivos
          },
        },
      },
      actions = {
        open_file = {
          quit_on_open = true, -- fecha a árvore ao abrir um arquivo
        },
      },
      git = {
        enable = true,        -- ativa integração com git
        ignore = false,       -- mostra arquivos ignorados pelo git
      }
    })    
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("nvim-tree.api").tree.open()
  end
})
  end
},

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
