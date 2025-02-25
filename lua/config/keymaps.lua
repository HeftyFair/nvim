-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function insertFullPath()
  local filepath = vim.fn.expand('%')
  vim.fn.setreg('+', filepath) -- write to clippoard
  vim.notify("Full path copied to clipboard: " .. filepath)
end

local function insertRelativePath()
  -- local filepath = vim.fn.expand('%:p')
 local filepath = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")

  vim.fn.setreg('+', filepath) -- write to clippoard
  vim.notify("Relative path copied to clipboard: " .. filepath)
end

vim.keymap.set('n', '<leader>pp', insertFullPath, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>pr', insertRelativePath, { noremap = true, silent = true })

