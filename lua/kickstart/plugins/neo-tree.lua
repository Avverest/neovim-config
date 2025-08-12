-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '|', ':Neotree buffers<CR>', desc = 'NeoTree buffers reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',

          -- Стандартные маппинги
          ['<cr>'] = 'open', -- Enter для открытия файла/папки
          ['l'] = 'open', -- 'l' для открытия
          ['h'] = 'close_node', -- 'h' для закрытия папки
          ['z'] = 'close_all_nodes', -- 'z' закрыть все подпапки

          -- Пользовательские маппинги
          ['<C-t>'] = 'open_tabnew', -- Ctrl+t: открыть в новой вкладке
          ['<C-f>'] = 'focus_preview', -- Ctrl+f: фокус на превью
          ['<C-e>'] = 'close_window', -- Ctrl+e: закрыть neo-tree
          ['R'] = 'refresh', -- R: обновить
          ['a'] = 'add', -- a: создать файл/папку
          ['d'] = 'delete', -- d: удалить
          ['r'] = 'rename', -- r: переименовать
          ['yy'] = 'copy_to_clipboard', -- yy: копировать
          ['pp'] = 'paste_from_clipboard', -- pp: вставить
          ['P'] = {
            'toggle_preview',
            config = {
              use_float = false,
            },
          },
        },
      },
      buffers = {
        ['\\'] = 'close_window',
        ['d'] = 'buffer_delete',
        ['bd'] = 'buffer_delete',
        ['<bs>'] = 'navigate_up',
        ['.'] = 'set_root',
        ['o'] = {
          'show_help',
          nowait = false,
          config = { title = 'Order by', prefix_key = 'o' },
        },
        ['oc'] = { 'order_by_created', nowait = false },
        ['od'] = { 'order_by_diagnostics', nowait = false },
        ['om'] = { 'order_by_modified', nowait = false },
        ['on'] = { 'order_by_name', nowait = false },
        ['os'] = { 'order_by_size', nowait = false },
        ['ot'] = { 'order_by_type', nowait = false },
      },
    },
  },
}
