return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    latex = {
      enabled = true,
      render_modes = false,
      converter = { 'utftex', 'latex2text' },
      highlight = 'RenderMarkdownMath',
      position = 'center',
      top_pad = 0,
      bottom_pad = 0,
    },
  },
}
