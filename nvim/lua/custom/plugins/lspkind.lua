local config = function()
  require('lspkind').init {
    mode = 'symbol_text',
    preset = 'default',
  }
end

return {
  'onsails/lspkind-nvim',
  config = config,
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/nvim-cmp',
  },
}
