return {
  {
    'j-hui/fidget.nvim',
    config = function()
      require('dashboard').setup {
        notification = {
          window = {
            winblend = 0,
          },
        },
      }
    end,
  },
}
