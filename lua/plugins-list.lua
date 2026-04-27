-- [[ Install and load plugins via vim.pack ]]
-- Run :vim.pack.update() to update, :help vim.pack for more info

vim.pack.add {
  -- Kickstart plugins

  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/stevearc/conform.nvim',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/NMAC427/guess-indent.nvim',
  'https://github.com/echasnovski/mini.nvim',
  'https://github.com/mfussenegger/nvim-lint',
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
  'https://github.com/folke/which-key.nvim',

  -- Todo comments and deps
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/folke/todo-comments.nvim',

  -- LSP and Mason deps
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
  'https://github.com/j-hui/fidget.nvim',

  -- Autocompletion
  { src = 'https://github.com/saghen/blink.lib' },
  { src = 'https://github.com/saghen/blink.cmp' },
  { src = 'https://github.com/L3MON4D3/LuaSnip' },

  -- Custom plugins
  'https://github.com/rose-pine/neovim',
  'https://github.com/folke/tokyonight.nvim',
  'https://github.com/folke/snacks.nvim',
}

-- Load plugins
local files = vim.fn.glob(vim.fn.stdpath 'config' .. '/lua/plugins/*.lua', false, true)
for _, file in ipairs(files) do
  local name = file:match '.*/(.*)%.lua$'
  require('plugins.' .. name)
end
