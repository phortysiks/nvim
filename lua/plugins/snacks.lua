-- Collection of QoL upgrades for Neovim

require('snacks').setup({
  bigfile = { enabled = true },
  dashboard = {
    enabled = true,
    preset = {
        -- stylua: ignore
      keys = {
        { icon = '', key = 'n', desc = 'New File', action = function() vim.cmd('enew') end },
        { icon = '', key = 'r', desc = 'Recent Files', action = function() Snacks.picker.recent() end },
        { icon = '󰈞', key = 'f', desc = 'Find File', action = function() Snacks.picker.files() end },
        { icon = '', key = 'p', desc = 'Projects', action = function() Snacks.picker.projects() end },
        { icon = '', key = 'c', desc = 'Config', action = function() Snacks.picker.files({ cwd = vim.fn.stdpath('config') }) end },
        { icon = '', key = 'u', desc = 'Update Plugins', action = function() vim.pack.update() end },
        { icon = '󰈆', key = 'q', desc = 'Quit', action = function() vim.cmd('qa') end },
      },
    },
    sections = {
      {
        text = {
          { '┃', hl = 'Function' },
          { ' ╲   ', hl = 'String' },
          { '┃┃', hl = 'Keyword' },
          { '          ' },
          { '\n' },
          { '┃┃', hl = 'Function' },
          { '╲╲  ', hl = 'String' },
          { '┃┃', hl = 'Keyword' },
          { '          ' },
          { '\n' },
          { '┃┃ ', hl = 'Function' },
          { '╲╲ ', hl = 'String' },
          { '┃┃', hl = 'Keyword' },
          { '          ' },
          { '\n' },
          { '┃┃  ', hl = 'Function' },
          { '╲╲ ', hl = 'String' },
          { '┃', hl = 'Keyword' },
          { ' E O V I M', hl = 'Keyword' },
          { '\n' },
        },
        align = 'center',
      },
      {
        text = {
          {
            vim.version().major .. '.' .. vim.version().minor .. '.' .. vim.version().patch,
            hl = 'Function',
          },
        },
        align = 'center',
        padding = 3,
      },
      { section = 'keys', gap = 1, padding = 1 },
    },
  },
  explorer = { enabled = true },
  git = { enabled = true },
  indent = { enabled = true },
  input = { enabled = true },
  picker = { enabled = true },
  notifier = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  statuscolumn = { enabled = true },
})

-- Buffers / Files
-- stylua: ignore start
vim.keymap.set('n', '<leader>,', function() Snacks.picker.buffers() end, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>/', function() Snacks.picker.grep() end, { desc = 'Grep' })
vim.keymap.set('n', '<leader>:', function() Snacks.picker.command_history() end, { desc = 'Command History' })
vim.keymap.set('n', '<leader><space>', function() Snacks.picker.files() end, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>n', function() Snacks.picker.notifications() end, { desc = 'Notification History' })

-- Find
vim.keymap.set('n', '<leader>fb', function() Snacks.picker.buffers() end, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fB', function() Snacks.picker.buffers({ hidden = true, nofile = true }) end, { desc = 'Buffers (all)' })
vim.keymap.set('n', '<leader>fc', function() Snacks.picker.files({ cwd = vim.fn.stdpath('config') }) end, { desc = 'Find Config File' })
vim.keymap.set('n', '<leader>ff', function() Snacks.picker.files() end, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fF', function() Snacks.picker.files({ cwd = vim.uv.cwd() }) end, { desc = 'Find Files (cwd)' })
vim.keymap.set('n', '<leader>fg', function() Snacks.picker.git_files() end, { desc = 'Find Files (git)' })
vim.keymap.set('n', '<leader>fr', function() Snacks.picker.recent() end, { desc = 'Recent' })
vim.keymap.set('n', '<leader>fR', function() Snacks.picker.recent({ filter = { cwd = true } }) end, { desc = 'Recent (cwd)' })
vim.keymap.set('n', '<leader>fp', function() Snacks.picker.projects() end, { desc = 'Projects' })

-- Git
vim.keymap.set('n', '<leader>gd', function() Snacks.picker.git_diff() end, { desc = 'Git Diff (hunks)' })
vim.keymap.set('n', '<leader>gD', function() Snacks.picker.git_diff({ base = 'origin', group = true }) end, { desc = 'Git Diff (origin)' })
vim.keymap.set('n', '<leader>gs', function() Snacks.picker.git_status() end, { desc = 'Git Status' })
vim.keymap.set('n', '<leader>gS', function() Snacks.picker.git_stash() end, { desc = 'Git Stash' })

-- Grep
vim.keymap.set('n', '<leader>sb', function() Snacks.picker.lines() end, { desc = 'Buffer Lines' })
vim.keymap.set('n', '<leader>sB', function() Snacks.picker.grep_buffers() end, { desc = 'Grep Open Buffers' })
vim.keymap.set('n', '<leader>sg', function() Snacks.picker.grep() end, { desc = 'Grep' })
vim.keymap.set('n', '<leader>sG', function() Snacks.picker.grep({ cwd = vim.uv.cwd() }) end, { desc = 'Grep (cwd)' })
vim.keymap.set('n', '<leader>sw', function() Snacks.picker.grep_word() end, { desc = 'Word (Root Dir)' })
vim.keymap.set('n', '<leader>sW', function() Snacks.picker.grep_word({ cwd = vim.uv.cwd() }) end, { desc = 'Word (cwd)' })
vim.keymap.set({ 'n', 'x' }, '<leader>sw', function() Snacks.picker.grep_word() end, { desc = 'Word (Root Dir)' })
vim.keymap.set({ 'n', 'x' }, '<leader>sW', function() Snacks.picker.grep_word({ cwd = vim.uv.cwd() }) end, { desc = 'Word (cwd)' })

-- Search
vim.keymap.set('n', '<leader>s"', function() Snacks.picker.registers() end, { desc = 'Registers' })
vim.keymap.set('n', '<leader>s/', function() Snacks.picker.search_history() end, { desc = 'Search History' })
vim.keymap.set('n', '<leader>sa', function() Snacks.picker.autocmds() end, { desc = 'Autocmds' })
vim.keymap.set('n', '<leader>sc', function() Snacks.picker.command_history() end, { desc = 'Command History' })
vim.keymap.set('n', '<leader>sC', function() Snacks.picker.commands() end, { desc = 'Commands' })
vim.keymap.set('n', '<leader>sd', function() Snacks.picker.diagnostics() end, { desc = 'Diagnostics' })
vim.keymap.set('n', '<leader>sD', function() Snacks.picker.diagnostics_buffer() end, { desc = 'Buffer Diagnostics' })
vim.keymap.set('n', '<leader>sh', function() Snacks.picker.help() end, { desc = 'Help Pages' })
vim.keymap.set('n', '<leader>sH', function() Snacks.picker.highlights() end, { desc = 'Highlights' })
vim.keymap.set('n', '<leader>si', function() Snacks.picker.icons() end, { desc = 'Icons' })
vim.keymap.set('n', '<leader>sj', function() Snacks.picker.jumps() end, { desc = 'Jumps' })
vim.keymap.set('n', '<leader>sk', function() Snacks.picker.keymaps() end, { desc = 'Keymaps' })
vim.keymap.set('n', '<leader>sl', function() Snacks.picker.loclist() end, { desc = 'Location List' })
vim.keymap.set('n', '<leader>sM', function() Snacks.picker.man() end, { desc = 'Man Pages' })
vim.keymap.set('n', '<leader>sm', function() Snacks.picker.marks() end, { desc = 'Marks' })
vim.keymap.set('n', '<leader>sR', function() Snacks.picker.resume() end, { desc = 'Resume' })
vim.keymap.set('n', '<leader>sq', function() Snacks.picker.qflist() end, { desc = 'Quickfix List' })
vim.keymap.set('n', '<leader>su', function() Snacks.picker.undo() end, { desc = 'Undotree' })

-- UI
vim.keymap.set('n', '<leader>ut', function() Snacks.picker.colorschemes() end, { desc = 'Themes' })

-- Explorer
vim.keymap.set('n', '<leader>e', function() Snacks.explorer() end, { desc = 'Explorer' })
