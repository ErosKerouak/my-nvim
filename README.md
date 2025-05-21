
---
# Minha configuração do Neovim

Este repositório contém minha configuração pessoal do **Neovim**, utilizando apenas **plugins modernos escritos em Lua** e com foco em:

- Produtividade
- Aprendizado do Vim
- Desenvolvimento com suporte a múltiplas linguagens
- Integração com Jupyter Notebooks (`molten.nvim`)

---

## ✅ Pré-requisitos

Para que todas as funcionalidades da configuração funcionem corretamente, é necessário ter instalado no sistema:

### **1. Dependências de sistema**

- **xclip** → para integração com o clipboard do sistema  

```bash
  sudo apt install xclip
````

* **xsel** → alternativa ao xclip (não obrigatória se o xclip estiver instalado)

  ```bash
  sudo apt install xsel
  ```

---

### **2. Node.js e npm**

Alguns servidores LSP, como `pyright` e `bashls`, exigem o Node.js.
Recomendo instalar via **NVM** (Node Version Manager):

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

Depois:

```bash
nvm install --lts
nvm use --lts
```

---

### **3. Fontes Nerd**

Para ícones e melhor aparência em plugins como `lualine` e `nvim-tree`, instale a fonte **JetBrains Mono Nerd Font**:

```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
fc-cache -fv
```

Depois, configure no `neovide.lua`:

```lua
vim.opt.guifont = "JetBrainsMono Nerd Font:h14"
```

---

### **4. Python**

Recomendo ter o **Python** e o **pip** atualizados para usar kernels Jupyter e outras ferramentas de desenvolvimento.

```bash
sudo apt install python3 python3-pip
```

Para usar o **Molten.nvim** com Jupyter:

```bash
pip install jupyter ipykernel
```

---

### **5. Neovim com suporte a +clipboard**

Já resolvido: usando **Neovim via Snap** ou instalando com suporte a `+clipboard`.

Confirme com:

```bash
nvim --version | grep clipboard
```

Deve aparecer: `+clipboard`.

---

## ✅ Estrutura modular

* `lua/eros/options.lua` → configurações básicas
* `lua/eros/keymaps.lua` → atalhos de teclado
* `lua/eros/plugins.lua` → gerenciador de plugins `lazy.nvim`
* `lua/eros/lsp.lua` → configuração de LSPs
* `lua/eros/interface.lua` → tema e aparência
* `lua/eros/neovide.lua` → ajustes gráficos específicos para Neovide

---

## ✅ Comandos personalizados

* `:Options` → abre o módulo de opções
* `:Keymaps` → abre o módulo de atalhos
* `:Plugins` → abre a configuração de plugins
* `:Lsp` → abre o módulo LSP
* `:Neovide` → abre a configuração específica para Neovide
* `:Interface` → abre o módulo de aparência

---

## ✅ Instalação dos plugins

Todos os plugins são gerenciados pelo **`lazy.nvim`**.

Ao abrir o Neovim pela primeira vez, o `lazy.nvim` instalará automaticamente os plugins listados.

---

## ✅ Observações futuras

Em breve pretendo criar uma pasta **`instrucoes/`** com arquivos `.md` para instruções mais detalhadas, como:

* Instalação de ferramentas específicas
* Comandos mais complexos
* Notas sobre configuração de servidores LSP

---

## ✅ Licença

Este repositório é pessoal e livre para consulta, modificação e adaptação.

---

