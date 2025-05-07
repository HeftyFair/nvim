-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- vim.g.neovide_show_border = true
--
-- if vim.g.neovide then
if vim.uv.os_uname().sysname == "Darwin" then
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_lifetime = 0.5
  vim.g.neovide_cursor_vfx_particle_density = 10
  vim.g.neovide_cursor_vfx_particle_speed = 10
  vim.g.neovide_cursor_vfx_particle_size = 2
  vim.g.neovide_cursor_vfx_color_offset = 120
  vim.g.neovide_cursor_vfx_enable = true
  vim.g.neovide_window_blurred = true
  vim.g.neovide_opacity = 0.75
  vim.g.neovide_input_macos_option_key_is_meta = "only_left"
end

vim.g.neovide_scroll_animation_far_lines = 1
vim.g.neovide_unlink_border_highlights = false
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_cursor_vfx_mode = "ripple"
-- end
