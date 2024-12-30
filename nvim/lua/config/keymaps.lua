local bind = vim.keymap.set

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
bind('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
bind('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Toggle diagnostics
local diagnostics_active = true
bind('n', '<leader>td', function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end, { desc = '[t]oggle [d]iagnostics' })

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
