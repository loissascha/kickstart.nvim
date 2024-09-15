return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
      { '<leader>nr', ':Neotree toggle show buffers right<CR>', { desc = 'Neotree show buffers right' } },
      { '<leader>nl', ':Neotree toggle show buffers left<CR>', { desc = 'Neotree show buffers right' } },
      { '<leader>ng', ':Neotree float git_status<CR>', { desc = 'Neotree show git status' } },
    },
    opts = {
      filesystem = {
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
    },
  },
  -- {
  --   'echasnovski/mini.files',
  --   version = '*',
  --   opts = {
  --     mappings = {
  --       go_in_plus = '<CR>',
  --       go_out = 'H',
  --       go_out_plus = 'h',
  --     },
  --     options = {
  --       use_as_default_explorer = true,
  --       -- files will be located at
  --       -- ~/.local/share/neobean/mini.files/trash
  --       permanent_delete = false,
  --     },
  --   },
  -- },
  -- {
  --   'folke/edgy.nvim',
  --   event = 'VeryLazy',
  --   init = function()
  --     vim.opt.laststatus = 3
  --     vim.opt.splitkeep = 'screen'
  --   end,
  --   opts = {
  --     left = {
  --       {
  --         title = 'Neo-Tree Buffers',
  --         ft = 'neo-tree',
  --         filter = function(buf)
  --           return vim.b[buf].neo_tree_source == 'buffers'
  --         end,
  --         pinned = true,
  --         size = { height = 0.4 },
  --         open = 'Neotree position=top buffers',
  --       },
  --       {
  --         title = 'Neo-Tree',
  --         ft = 'neo-tree',
  --         filter = function(buf)
  --           return vim.b[buf].neo_tree_source == 'filesystem'
  --         end,
  --         size = { height = 0.6 },
  --       },
  --     },
  --   },
  -- },
}
