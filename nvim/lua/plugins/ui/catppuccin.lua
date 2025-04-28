-- Color scheme for nvim
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  flavour = 'mocha',
  integrations = {
    -- cmp = true,
    dap = true,
    dap_ui = true,
    dashboard = true,
    dropbar = {
      enabled = false,
      color_mode = false, -- enable color for kind's texts, not just kind's icons
    },
    gitsigns = true,
    fidget = true,
    harpoon = false,
    neotree = true,
    nvimtree = true,
    native_lsp = {
      enabled = true,
    },
    treesitter = true,
    mason = true,
    mini = {
      enabled = true,
      indentscope_color = '',
    },
    noice = true,
    render_markdown = true,
    telescope = {
      enabled = true,
    },
    lsp_trouble = false,
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
        all = {},
        mocha = {
          base = '#1e1e2e',
        },
        frappe = {},
        macchiato = {},
        latte = {},
      },
      transparent_background = true,
      custom_highlights = function(colors)
        return {
          -- LineNr = { },
          NeoTreeNormal = { bg = dark },
          NeoTreeNormalNC = { bg = dark },
          StatusLine = { bg = 'NONE' },
          StatusLineNC = { bg = 'NONE' },
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
