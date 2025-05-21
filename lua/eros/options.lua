local opt = vim.opt  -- Usamos o atalho que definimos no init.lua

------------------------------------------------
----------------- Interface --------------------
------------------------------------------------
opt.number = true            -- Mostra o número da linha atual.
opt.relativenumber = true    -- Mostra números relativos nas linhas próximas.
opt.cursorline = true        -- Destaca a linha onde está o cursor.
opt.cursorcolumn = true      -- Destaca a coluna do cursor.
opt.wrap = true              -- Quebra de linha automática (útil para LaTeX).
opt.linebreak = true         -- Quebra a linha em espaços, evitando cortar palavras.
opt.signcolumn = "yes"       -- Garante espaço na lateral para símbolos de plugins.
opt.showcmd = true           -- Exibe comandos incompletos.
opt.showmatch = true         -- Destaca parênteses correspondentes.
opt.splitright = true        -- Abre splits verticais à direita.
opt.termguicolors = true     -- Habilita cores verdadeiras.

------------------------------------------------
----------------- Barra de status --------------
------------------------------------------------
opt.laststatus = 2           -- Sempre mostra a statusline.

------------------------------------------------
----------------- Clipboard --------------------
------------------------------------------------
opt.clipboard = "unnamedplus"  -- Usa o clipboard do sistema.

------------------------------------------------
----------------- Mouse ------------------------
------------------------------------------------
opt.mouse = "vi"            -- Mouse só nos modos Visual e Insert. Redimensionar splits continua possível.

------------------------------------------------
----------------- Search -----------------------
------------------------------------------------
opt.ignorecase = true       -- Ignora maiúsculas/minúsculas na busca.
opt.smartcase = true        -- Considera maiúsculas se usadas.
opt.incsearch = true        -- Busca incremental.
opt.hlsearch = true         -- Destaca resultados da busca.

------------------------------------------------
------------ Temporary Files -------------------
------------------------------------------------
opt.swapfile = false        -- Evita criar arquivos .swp.
opt.backup = false          -- Evita arquivos de backup automáticos.
opt.undofile = true         -- Mantém o histórico de alterações entre sessões.

------------------------------------------------
-------- Indentation and Tabulation ------------
------------------------------------------------
opt.tabstop = 4             -- Tamanho visual do Tab.
opt.shiftwidth = 4          -- Tamanho da indentação automática.
opt.expandtab = true        -- Converte Tab em espaços.
opt.smartindent = true      -- Tenta adivinhar a indentação correta.
opt.autoindent = true       -- Copia a indentação da linha anterior.
