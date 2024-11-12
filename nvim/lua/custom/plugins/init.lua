return {
  require 'custom.plugins.dashboard',
  require 'custom.plugins.lualine',
  require 'custom.plugins.avante',
  require 'custom.plugins.copilot',
  require 'custom.plugins.fugitive',
  require 'custom.plugins.lspkind',
  require 'custom.plugins.oil',
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    integrations = {
      cmp = true,
      dashboard = true,
      gitsigns = true,
      nvimtree = true,
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
  },
}

-- {
--   'olimorris/onedarkpro.nvim',
--   priority = 1000, -- Ensure it loads first
--   init = function()
--     vim.cmd 'colorscheme onedark'
--   end,
-- },
