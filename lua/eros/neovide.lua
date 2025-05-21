-- ============================================
-- ==========   Configurações Neovide   =======
-- ============================================

if vim.g.neovide then

  -- ===== Fonte =====
  vim.opt.guifont = "JetBrainsMono Nerd Font:h14"  -- Fonte da GUI com suporte a ícones

  -- ===== Cursor =====
  vim.g.neovide_cursor_animation_length = 0.08   -- Duração da animação do cursor (0.0 = sem animação)
  vim.g.neovide_cursor_trail_size = 0.4          -- Tamanho do rastro deixado pelo cursor
  vim.g.neovide_cursor_vfx_mode = "railgun"      -- Efeito visual do cursor (opções: railgun, torpedo, pixiedust, ripple, sonicboom, wireframe)

  -- ===== Rolagem =====
  vim.g.neovide_scroll_animation_length = 0.1    -- Duração da animação de rolagem (scroll)

  -- ===== Transparência =====
  vim.g.neovide_opacity = 0.9                    -- Transparência da janela (1.0 = opaco, 0.0 = invisível)
  vim.g.transparency = 0.9                       -- (Opcional) compatível com alguns plugins que usam 'g:transparency'

  -- ===== Comportamento da janela =====
  -- vim.g.neovide_remember_window_size = true   -- Salva e restaura o tamanho da janela entre sessões

  -- ===== Mouse =====
  vim.g.neovide_hide_mouse_when_typing = true    -- Esconde o mouse enquanto digita

  -- ===== Teclas modificadoras =====
  vim.g.neovide_input_use_logo = true            -- Permite usar a tecla Alt como modificador (útil para acentos e atalhos)

  -- ===== Tema exclusivo para Neovide (opcional) =====
  -- vim.cmd.colorscheme("tokyonight")           -- Define um tema visual diferente só no Neovide

end
