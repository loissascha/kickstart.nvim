-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- GitHub Copilot plugin
  -- {
  --   'github/copilot.vim',
  --   config = function()
  --     -- Optional: Add custom configuration here
  --     -- vim.g.copilot_no_tab_map = true
  --     -- vim.api.nvim_set_keymap('i', '<C-I>', 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true })
  --   end,
  -- },
  --
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },

  -- { 'mhinz/vim-startify', event = 'VimEnter' },

  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
      mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = false,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = false,
      },
    },
  },

  {
    'karb94/neoscroll.nvim',
    config = function()
      local neoscroll = require 'neoscroll'
      neoscroll.setup {
        mappings = { -- Keys to be mapped to their corresponding default scrolling animation
          '<C-u>',
          '<C-d>',
          '<C-b>',
          '<C-f>',
          '<C-y>',
          '<C-e>',
          'zt',
          'zz',
          'zb',
        },
        hide_cursor = true, -- Hide cursor while scrolling
        stop_eof = true, -- Stop at <EOF> when scrolling downwards
        respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing = 'linear', -- Default easing function
        pre_hook = nil, -- Function to run before the scrolling animation starts
        post_hook = nil, -- Function to run after the scrolling animation ends
        performance_mode = false, -- Disable "Performance Mode" on all buffers.
      }
      vim.keymap.set('n', '<C-d>', function()
        neoscroll.ctrl_d { duration = 150 }
      end)
      vim.keymap.set('v', '<C-d>', function()
        neoscroll.ctrl_d { duration = 150 }
      end)
      vim.keymap.set('n', '<C-u>', function()
        neoscroll.ctrl_u { duration = 150 }
      end)
      vim.keymap.set('v', '<C-u>', function()
        neoscroll.ctrl_u { duration = 150 }
      end)
    end,
  },
}
