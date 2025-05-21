-- Inicializar Mason
require("mason").setup()

-- Integrar Mason ao LSPConfig e instalar os servidores automaticamente
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright",    -- Python
    "texlab",     -- LaTeX e BibTeX
    "marksman",   -- Markdown
    "bashls",     -- Bash e Makefile
    "lua_ls",     -- Lua
    "ltex",       -- Ortografia e gramática
    "fortls",     -- Fortran
    "matlab_ls"   -- Matlab
  }
})

-- Configuração básica para todos os servidores
local lspconfig = require("lspconfig")

local servers = {
  "pyright",
  "texlab",
  "marksman",
  "bashls",
  "lua_ls",
  "fortls",
  "matlab_ls"
}

for _, server in ipairs(servers) do
  lspconfig[server].setup({})
end

-- Configuração específica para ltex-ls: ativar PT-BR e EN-US
lspconfig.ltex.setup({
  settings = {
    ltex = {
      language = { "en-US", "pt-BR" }
    }
  }
})
