return {
  'Bekaboo/dropbar.nvim',
  -- relevant parts from my lazy config for dropbar
  ---@type dropbar_configs_t
  opts = {
    bar = {
      ---@type dropbar_source_t[]|fun(buf: integer, win: integer): dropbar_source_t[]
      sources = function(buf, _)
        local sources = require 'dropbar.sources'
        if vim.bo[buf].ft == 'markdown' then
          return {
            sources.path,
            sources.markdown,
          }
        end
        if vim.bo[buf].buftype == 'terminal' then
          return {
            sources.terminal,
          }
        end

        local clients = vim.lsp.get_clients {
          bufnr = buf,
          method = require('vim.lsp.protocol').Methods.textDocument_documentSymbol,
        }
        if not vim.tbl_isempty(clients) then
          return {
            sources.path,
            sources.lsp,
          }
        else
          return {
            sources.path,
            sources.treesitter,
          }
        end
      end,
    },
    sources = {
      lsp = {
        valid_symbols = {
          'Class',
          'Method',
          'Function',
        },
      },
    },
  },
  config = function(_, opts)
    require('dropbar').setup(opts)

    vim.api.nvim_create_autocmd('LspAttach', {
      desc = 'Register LSP source and disable Treesitter source when an LS that supports documentSymbol attaches.',
      group = vim.api.nvim_create_augroup('DropBarLspAttachRefreshSources', { clear = true }),
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.supports_method 'textDocument/documentSymbol' then
          local sources = require 'dropbar.sources'
          local utils = require 'dropbar.utils'
          for win in pairs(_G.dropbar.bars[vim.api.nvim_get_current_buf()]) do
            _G.dropbar.bars[vim.api.nvim_get_current_buf()][win].sources = {
              sources.path,
              sources.lsp,
            }
            utils.bar.exec('update', { win = win })
          end
        end
      end,
    })
  end,
}
