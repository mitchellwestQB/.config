-- Color scheme for nvim
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  flavour = 'macchiato',
  integrations = {
    cmp = true,
    dashboard = true,
    gitsigns = true,
    -- nvimtree = true,
    neotree = true,
    treesitter = true,
    notify = false,
    mason = true,
    mini = {
      enabled = false,
      indentscope_color = '',
    },
    telescope = {
      enabled = true,
      -- style = "nvchad"
    },
    which_key = true,
  },
  init = function()
    vim.cmd 'colorscheme catppuccin-macchiato'
  end,
}
