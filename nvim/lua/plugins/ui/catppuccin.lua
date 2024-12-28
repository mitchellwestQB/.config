-- Color scheme for nvim
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  flavour = 'mocha',
  integrations = {
    cmp = true,
    dashboard = true,
    gitsigns = true,
    neotree = true,
    nvimtree = true,
    treesitter = true,
    mason = true,
    mini = {
      enabled = true,
      indentscope_color = '',
    },
    telescope = {
      enabled = true,
    },
    which_key = true,
  },
  -- init = function()
  --   -- vim.cmd 'colorscheme catppuccin'
  --
  --   -- vim.cmd [[colorscheme catppuccin]]
  -- end,
  config = function()
    local dark = '#191926'
    require('catppuccin').setup {
      color_overrides = {
        all = {
          -- text = '#ffffff',
        },
        mocha = {
          base = '#1e1e2e',
        },
        frappe = {},
        macchiato = {},
        latte = {},
      },
      custom_highlights = function(colors)
        return {
          -- LineNr = { },
          NeoTreeNormal = { bg = dark },
          NeoTreeNormalNC = { bg = dark },
          -- ErrorMsg = { bg = dark },
          -- MsgArea = { bg = dark },
        }
      end,
    }
    -- config = function()
    --   require('catppuccin').setup {
    --     -- color_overrides = {
    --     --   all = {
    --     --     text = '#ffffff',
    --     --   },
    --     --   mocha = {
    --     --     base = '#1e1e2e',
    --     --   },
    --     --   frappe = {},
    --     --   macchiato = {},
    --     --   latte = {},
    --     -- },
    --     custom_highlights = function(colors)
    --       return {
    --         NeoTreeNormal = { bg = '#191926' },
    --         NeoTreeNormalNC = { bg = '#191926' },
    --         NeoTreeEndOfBuffer = { bg = '#191926' },
    --       }
    --     end,
    --   }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
