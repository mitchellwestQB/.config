return {
  'nvim-lualine/lualine.nvim',
  opts = {
    theme = 'catppuccin',
    options = {
      component_separators = ' ',
      section_separators = { left = '', right = '' },
    },
  },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
