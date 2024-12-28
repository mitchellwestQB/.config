-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require('lazy').setup {
  spec = {
    -- add LazyVim and import its plugins
    -- { 'LazyVim/LazyVim', import = 'lazyvim.plugins' },
    -- import/override with your plugins
    { import = 'plugins.editor' },
    { import = 'plugins.ui' },
    { import = 'plugins.git' },
    { import = 'plugins.lsp' },
  },
  install = { colorscheme = { 'catppuccin-macchiato' } },
  -- {
  --   ui = {
  --     icons = {},
  --   },
  -- },
}
