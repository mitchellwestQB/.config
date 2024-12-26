return {
  require 'custom.plugins.dashboard',
  require 'custom.plugins.lualine',
  -- require 'custom.plugins.avante',
  require 'custom.plugins.copilot',
  require 'custom.plugins.fugitive',
  require 'custom.plugins.lspkind',
  require 'custom.plugins.oil',
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      -- basic telescope configuration
      local conf = require('telescope.config').values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require('telescope.pickers')
          .new({}, {
            prompt_title = 'Harpoon',
            finder = require('telescope.finders').new_table {
              results = file_paths,
            },
            previewer = conf.file_previewer {},
            sorter = conf.generic_sorter {},
          })
          :find()
      end
      vim.keymap.set('n', '<C-e>', function()
        toggle_telescope(harpoon:list())
      end, { desc = 'Open harpoon window' })

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      -- vim.keymap.set('n', '<C-e>', function()
      --   harpoon.ui:toggle_quick_menu(harpoon:list())
      -- end)

      vim.keymap.set('n', '<C-h>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-j>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-k>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-l>', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-S-N>', function()
        harpoon:list():next()
      end)
    end,
  },
  {
    'xiyaowong/transparent.nvim',
    config = function()
      require('transparent').setup {
        extra_groups = {
          'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
          'NvimTreeNormal',
        },
      }
    end,
  },
  {
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
  },
  { 'uga-rosa/translate.nvim' },
}

-- {
--   'olimorris/onedarkpro.nvim',
--   priority = 1000, -- Ensure it loads first
--   init = function()
--     vim.cmd 'colorscheme onedark'
--   end,
-- },
