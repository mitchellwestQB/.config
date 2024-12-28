-- A plugin show neovim startup time.
return {
  'dstein64/vim-startuptime',
  event = 'VeryLazy',
  cmd = 'StartupTime',
  config = function()
    vim.g.startuptime_tries = 10
  end,
}
