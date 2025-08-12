return {
  'nvim-flutter/flutter-tools.nvim',
  version = '*',
  lazy = false,
  config = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
}
