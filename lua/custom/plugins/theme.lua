-- lua/plugins/rose-pine.lua
-- return {
--   'rose-pine/neovim',
--   name = 'rose-pine',
--   config = function()
--     vim.cmd 'colorscheme rose-pine'
--   end,
-- }

-- return {
--   'vague2k/vague.nvim',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other plugins
--   config = function()
--     -- NOTE: you do not need to call setup if you don't want to.
--     require('vague').setup {
--       -- optional configuration here
--       transparent = true,
--     }
--     vim.cmd 'colorscheme vague'
--   end,
-- }

-- return {
--   'ellisonleao/gruvbox.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require 'gruvbox'
--     vim.cmd 'colorscheme gruvbox'
--   end,
-- }

-- return {
-- 	'yorik1984/newpaper.nvim',
--   priority = 1000,
-- 	config = function()
--     require 'newpaper'
--     vim.cmd 'colorscheme gruvbox'
--   end,
-- }

return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup {}

    vim.cmd 'colorscheme github_dark_dimmed'
  end,
}
