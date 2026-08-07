return {
  'nicolasgb/jj.nvim',
  version = '*', -- Use latest stable release
  -- Or from the main branch (uncomment the branch line and comment the version line)
  -- branch = "main",
  dependencies = {
    'sindrets/diffview.nvim', -- Optional for diffview backend
  },
  config = function()
    require('jj').setup {
      diff = {
        -- Default backend for viewing diffs
        -- "native" - Built-in split diff using Neovim's diff mode (default)
        -- "diffview" - Use diffview.nvim plugin (requires diffview.nvim)
        -- "codediff" - Use codediff.nvim plugin (requires codediff.nvim)
        -- Or any custom backend name you've registered
        backend = 'native',
        layout = 'vertical',
      },
    }
  end,
}
