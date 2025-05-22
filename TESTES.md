
# Testes e Ajustes de Plugins

Este arquivo serve para organizar o processo de **teste** e **ajustes finos** da minha configuração do Neovim.  
Vou marcar o que já testei e anotar observações para futuras melhorias.

---

## ✅ Plugins e Testes

### 🎨 Aparência

- [ ] `alpha-nvim`  
  - [ ] Verificar se a tela inicial aparece corretamente.  
  - [ ] Testar botões personalizados: novo arquivo, abrir NvimTree, etc.  
  - [ ] Ajustar banner ou criar novos atalhos se necessário.

- [ ] `lualine.nvim`  
  - [ ] Verificar statusline ativa e combinando com o tema.  
  - [ ] Testar diferentes temas de lualine.

- [ ] Temas (`gruvbox`, `onedark`, `tokyonight`)  
  - [ ] Alternar entre os temas.  
  - [ ] Escolher o favorito para manter como padrão.

---

### 🗂️ Navegação e Produtividade

- [ ] `nvim-tree`  
  - [ ] Abrir/fechar árvore com `<leader>e`.  
  - [ ] Testar atalhos: focar (`<leader>f`), localizar arquivo (`<leader>l`).  
  - [ ] Criar, renomear e deletar arquivos via árvore.

- [ ] `telescope.nvim`  
  - [ ] Buscar arquivos (`find_files`).  
  - [ ] Live grep (`live_grep`).  
  - [ ] Testar extensões se quiser (ex.: file_browser).

- [ ] `which-key.nvim`  
  - [ ] Verificar se mostra os atalhos após `<leader>`.  
  - [ ] Ajustar descrições se necessário.

---

### 🖊️ Edição

- [ ] `Comment.nvim`  
  - [ ] Testar atalhos para comentar/descomentar linhas.  
  - [ ] Ajustar estilo de comentários se necessário.

- [ ] `nvim-surround`  
  - [ ] Testar adição e remoção de cercas (`" ' ( ) [ ] { } < >`).  
  - [ ] Ajustar atalhos se quiser.

---

### 💻 Desenvolvimento

- [ ] `mason.nvim` + `mason-lspconfig.nvim` + `lspconfig`  
  - [ ] Verificar instalação automática de servidores.  
  - [ ] Testar diagnósticos e autocompletar com:  
    - [ ] Python (`pyright`)  
    - [ ] LaTeX (`texlab`)  
    - [ ] Markdown (`marksman`)  
    - [ ] Bash (`bashls`)  
    - [ ] Lua (`lua_ls`)  
    - [ ] Ortografia (`ltex-ls`)  
    - [ ] Fortran (`fortls`)  
    - [ ] Matlab (`matlab_ls`)

- [ ] `nvim-cmp` + `LuaSnip`  
  - [ ] Testar autocompletar em arquivos de código.  
  - [ ] Testar snippets.

---

### 🔬 Ferramentas de Estudo e Aprendizado

- [ ] `vim-be-good`  
  - [ ] Jogar para praticar comandos de movimento.

- [ ] `vim-game-code-break`  
  - [ ] Jogar para relaxar e treinar lógica.

- [ ] `hardmode`  
  - [ ] Confirmar que desativa as setas.  
  - [ ] Treinar uso exclusivo de `hjkl`.

---

### 📓 Integração Científica

- [ ] `molten-nvim`  
  - [ ] Testar inicialização (`:MoltenInit`).  
  - [ ] Executar células de código (`MoltenEvaluate`).  
  - [ ] Verificar integração com kernel Jupyter.  

---

## ✅ Ajustes Futuros

- [ ] Refinar o `nvim-tree` (auto-fechar, filtros, ícones).  
- [ ] Ajustar aparência e atalhos do `alpha-nvim`.  
- [ ] Avaliar adição do `telescope-file-browser`.  
- [ ] Criar scripts ou comandos para automação de tarefas frequentes.  
- [ ] Ajustar fonte (`JetBrainsMono Nerd Font`) se necessário.  
- [ ] Criar mais arquivos em `instrucoes/` para instalação e manutenção.

---

## ✅ Observações Gerais

- [ ] [Escreva aqui suas anotações sobre problemas ou melhorias]

---

