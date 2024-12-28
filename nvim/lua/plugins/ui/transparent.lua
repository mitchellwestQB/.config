-- Transparency for floating windows
return {
  'xiyaowong/transparent.nvim',
  config = function()
    require('transparent').setup {
      extra_groups = {
        'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
        'NvimTreeNormal',
      },
    }
  end,
}
