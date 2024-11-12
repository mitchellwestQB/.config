return {
  basedpyright = {
    disableOrganizeImports = true,
    disableTaggedHints = false,
    disableLanguageServices = false,

    analysis = {
      -- ignore = { '*' }, -- Ignore all files for analysis to exclusively use Ruff for linting
      typeCheckingMode = 'basic',
      -- useLibraryCodeForTypes = true, -- Analyze library code for type information
      -- autoImportCompletions = true,
      diagnosticMode = 'workspace',
      -- autoSearchPaths = true,
      -- diagnosticSeverityOverrides = {
      --   reportIgnoreCommentWithoutRule = true,
      -- },
    },
  },
}
