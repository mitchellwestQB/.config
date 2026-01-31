local bind = vim.keymap.set

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
bind('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
bind('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Toggle diagnostics
-- local diagnostics_active = true
-- bind('n', '<leader>td', function()
--   diagnostics_active = not diagnostics_active
--   if diagnostics_active then
--     vim.diagnostic.show()
--   else
--     vim.diagnostic.hide()
--   end
-- end, { desc = '[t]oggle [d]iagnostics' })
vim.keymap.set('n', '<leader>td', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, noremap = true })

-- Exit terminal mode
bind('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
bind('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
bind('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
bind('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
bind('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Paste without changing yank
bind('x', '<leader>p', '"_dP')

-- Translate to english
bind('n', '<leader>T', '<cmd>Translate EN<CR>', { desc = '[T]ranslate EN' })

-- jj key maps
local jj = require 'jj'
-- Open jj log (most people start here)
vim.keymap.set('n', '<leader>jl', ':Jlog<CR>', { desc = 'jj log' })

-- Open jj status (like git status)
vim.keymap.set('n', '<leader>js', ':Jstatus<CR>', { desc = 'jj status' })

-- Diff current change vs parent (most common "what did I change?")
vim.keymap.set('n', '<leader>jd', ':Jdiff<CR>', { desc = 'jj diff current vs parent' })

-- Diff current vs main/trunk (super common for "what have I done since main?")
vim.keymap.set('n', '<leader>jm', function()
  require('jj.diff').diff_revisions { left = 'main', right = '@' }
end, { desc = 'jj diff current vs main' })

-- Prompt for arbitrary diff (left..right or bookmark vs current)
vim.keymap.set('n', '<leader>jD', function()
  vim.ui.input({ prompt = 'Base revision (e.g. main): ' }, function(left)
    if not left or left == '' then
      return
    end
    vim.ui.input({ prompt = 'Target revision (e.g. @): ' }, function(right)
      if not right or right == '' then
        return
      end
      require('jj.diff').diff_revisions { left = left, right = right }
    end)
  end)
end, { desc = 'jj diff arbitrary revisions' })

-- New change / description edit
vim.keymap.set('n', '<leader>jn', ':Jnew<CR>', { desc = 'jj new change' })
vim.keymap.set('n', '<leader>jc', ':Jdescribe<CR>', { desc = 'jj describe current' })

-- Common operations
vim.keymap.set('n', '<leader>ja', ':Jabandon<CR>', { desc = 'jj abandon current' })
vim.keymap.set('n', '<leader>jr', ':Jrebase -d main<CR>', { desc = 'jj rebase onto main' }) -- adjust destination
vim.keymap.set('n', '<leader>jf', ':Jfetch<CR>', { desc = 'jj fetch' })
vim.keymap.set('n', '<leader>jp', ':Jpush<CR>', { desc = 'jj push' })

-- Annotate/blame current file
local annotate = require 'jj.annotate'
vim.keymap.set('n', '<leader>ja', annotate.file, { desc = 'jj annotate file' })
vim.keymap.set('n', '<leader>jA', annotate.line, { desc = 'jj annotate line' })
