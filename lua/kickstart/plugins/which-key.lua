return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter',
    ---@module 'which-key'
    ---@type wk.Opts
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      -- delay between pressing a key and opening which-key (milliseconds)
      delay = 0,
      icons = {
        mappings = vim.g.have_nerd_font,
        rules = {
          { pattern = 'git', icon = '󰊢', color = 'orange' },
        },
      },
      preset = 'helix',

      -- Document existing key chains
      spec = {
        { '<leader>b', group = 'Buffer', mode = { 'n', 'v' } },
        { '<leader>f', group = 'Find', mode = { 'n', 'v' } },
        { '<leader>g', group = 'Git', mode = { 'n', 'v' } },
        { '<leader>s', group = 'Search', mode = { 'n', 'v' } },
        { '<leader>t', group = 'Toggle' },
        { '<leader>u', group = 'UI', mode = { 'n', 'v' } },
        { '<leader>h', group = 'Git Hunk', mode = { 'n', 'v' } }, -- Enable gitsigns recommended keymaps first
        { 'gr', group = 'LSP Actions', mode = { 'n' } },
      },
    },
  },
}
