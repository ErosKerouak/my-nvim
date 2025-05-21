-- Definir o tema
vim.cmd.colorscheme("gruvbox")

-- Configurar lualine com o mesmo tema
require('lualine').setup {
  options = {
    theme = 'gruvbox'
  }
}

-- Garantir que os ícones estão configurados
require('nvim-web-devicons').setup()
