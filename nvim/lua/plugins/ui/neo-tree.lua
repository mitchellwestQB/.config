-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = false, -- Hidden files/folders are not shown by default
        hide_dotfiles = true, -- Hide dotfiles (e.g., .gitignore)
        hide_gitignored = true, -- Hide git-ignored files (e.g., __pycache__ if in .gitignore)
        hide_by_name = {
          '__pycache__', -- Hide __pycache__ folders
        },
        hide_by_pattern = {
          '*.pyc', -- Hide .pyc files
        },
        never_show = {}, -- Empty to allow toggling __pycache__ visibility
        never_show_by_pattern = {}, -- Empty for flexibility
      },
      use_libuv_file_watcher = true, -- Respect .gitignore
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
