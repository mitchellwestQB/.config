return {}
-- return {
--   'yetone/avante.nvim',
--   event = 'VeryLazy',
--   lazy = false,
--   version = false, -- set this if you want to always pull the latest change
--   opts = {
--     -- add any opts here
--     auto_suggestions_provider = 'copilot',
--     provider = 'copilot',
--     copilot = {},
--     claude = {
--       endpoint = 'https://anthropic.prod.ai-gateway.quantumblack.com/5a8982a9-64ad-4993-a712-0d48e231fba6',
--       model = 'claude-3-5-sonnet-20240620',
--       temperature = 0,
--       max_tokens = 4096,
--     },
--     behaviour = {
--       auto_suggestions = false, -- Experimental stage
--       auto_set_highlight_group = true,
--       auto_set_keymaps = true,
--       auto_apply_diff_after_generation = false,
--       support_paste_from_clipboard = false,
--     },
--   },
--   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
--   build = 'make',
--   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
--   dependencies = {
--     'stevearc/dressing.nvim',
--     'nvim-lua/plenary.nvim',
--     'MunifTanjim/nui.nvim',
--     --- The below dependencies are optional,
--     'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
--     {
--       -- support for image pasting
--       'HakonHarnes/img-clip.nvim',
--       event = 'VeryLazy',
--       opts = {
--         -- recommended settings
--         default = {
--           embed_image_as_base64 = false,
--           prompt_for_file_name = false,
--           drag_and_drop = {
--             insert_mode = true,
--           },
--           -- required for Windows users
--           use_absolute_path = true,
--         },
--       },
--     },
--     {
--       -- Make sure to set this up properly if you have lazy=true
--       'MeanderingProgrammer/render-markdown.nvim',
--       opts = {
--         file_types = { 'markdown', 'Avante' },
--       },
--       ft = { 'markdown', 'Avante' },
--     },
--   },
-- }
