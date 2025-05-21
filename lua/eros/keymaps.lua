local g = vim.g  -- Acessamos as variáveis globais para definir a leader
g.mapleader = " "  -- Define a tecla <leader> como espaço

------------------------------------------------
----------------- Git Atalhos ------------------
------------------------------------------------

-- Git Status em terminal
vim.keymap.set("n", "<leader>gs", ":terminal git status<CR>")

-- Git Add para o arquivo atual
vim.keymap.set("n", "<leader>ga", function()
  local file = vim.fn.expand("%")
  vim.cmd("!git add " .. file)
end)

-- Git Commit em split com terminal
vim.keymap.set("n", "<leader>gc", ":split | terminal git commit<CR>")

-- Git Push
vim.keymap.set("n", "<leader>gps", ":terminal git push<CR>")

-- Git Pull
vim.keymap.set("n", "<leader>gpl", ":terminal git pull<CR>")

------------------------------------------------
---------------- Conda Atalhos -----------------
------------------------------------------------

-- Conda Activate via comando personalizado
vim.api.nvim_create_user_command("CondaActivate", function(opts)
  vim.cmd("terminal conda activate " .. opts.args)
end, { nargs = 1 })

-- Conda Deactivate com atalho
vim.keymap.set("n", "<leader>cd", ":terminal conda deactivate<CR>")

------------------------------------------------
--------------- Tectonic Atalhos ----------------
------------------------------------------------

-- Tectonic compile via comando personalizado
vim.api.nvim_create_user_command("Tectonic", function(opts)
  vim.cmd("terminal tectonic " .. opts.args)
end, { nargs = 1 })

------------------------------------------------
------ Comandos para abrir módulos config ------
------------------------------------------------

vim.api.nvim_create_user_command("options", "tabnew ~/.config/nvim/lua/eros/options.lua", {})
vim.api.nvim_create_user_command("keymaps", "tabnew ~/.config/nvim/lua/eros/keymaps.lua", {})
vim.api.nvim_create_user_command("plugins", "tabnew ~/.config/nvim/lua/eros/plugins.lua", {})
vim.api.nvim_create_user_command("lsp", "tabnew ~/.config/nvim/lua/eros/lsp.lua", {})
vim.api.nvim_create_user_command("neovide", "tabnew ~/.config/nvim/lua/eros/neovide.lua", {})
vim.api.nvim_create_user_command("interface", "tabnew ~/.config/nvim/lua/eros/interface.lua", {})

------------------------------------------------
------------ Outros Atalhos Úteis --------------
------------------------------------------------

-- Salvar rapidamente
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Fechar buffer/arquivo
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Mover entre splits com Ctrl + hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Redimensionar splits com Ctrl + setas
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Limpar realce de busca
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Abrir explorador de arquivos (nvim-tree)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Fuzzy finder com telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

-- Comentário de linhas (requer Comment.nvim)
vim.keymap.set("n", "<leader>/", "gcc", { remap = true })
vim.keymap.set("v", "<leader>/", "gc", { remap = true })

-- Abrir terminal integrado
vim.keymap.set("n", "<leader>t", ":terminal<CR>")
