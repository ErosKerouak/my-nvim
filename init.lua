-- Function aliases for convenience
local cmd = vim.cmd  -- permite executar comandos do Vim diretamente do Lua. Ex: cmd('colorscheme gruvbox')
local opt = vim.opt  -- permite configurar opções do Neovim de forma elegante e segura. Ex: opt.number = true
local g   = vim.g    -- acessa e define variáveis globais do Vim/Neovim. Ex: g.mapleader = " "

-- Load configuration modules
require("eros.plugins")     -- lazy.setup com todos os plugins
require("eros.options")     -- configurações básicas do Neovim
require("eros.keymaps")     -- atalhos de teclado
require("eros.lsp")         -- configuração do LSP
require("eros.neovide")     -- ajustes específicos para Neovide
require("eros.interface") -- tema (ex: gruvbox)




