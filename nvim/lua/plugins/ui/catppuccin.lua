-- Color scheme for nvim
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  flavour = 'mocha',
  config = function()
    local dark = '#191926'
    require('catppuccin').setup {
      auto_integrations = true,
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
          StatusLine = { bg = 'none' },
          StatusLineNC = { bg = 'none' },
          -- ErrorMsg = { bg = dark },
          -- MsgArea = { bg = dark },
          NormalFloat = { bg = 'none' },
          TelescopeBorder = { bg = 'none' },
          TelescopePromptBorder = { bg = 'none' },
          TelescopeResultsBorder = { bg = 'none' },
          TelescopePreviewBorder = { bg = 'none' },
          TelescopeNormal = { bg = 'none' },
          TelescopePromptNormal = { bg = 'none' },
          TelescopePromptTitle = { fg = colors.pink, bg = 'none' },
          TelescopePreviewTitle = { fg = colors.green, bg = 'none' },
          TelescopeResultsTitle = { fg = colors.blue, bg = 'none' },
        }
      end,
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
