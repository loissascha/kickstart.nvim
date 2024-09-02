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

  -- {
  --   'akinsho/bufferline.nvim',
  --   requires = 'nvim-tree/nvim-web-devicons',
  --   config = function()
  --     require('bufferline').setup {
  --       options = {
  --         numbers = 'buffer_id',
  --         close_command = 'bdelete! %d',
  --         right_mouse_command = 'bdelete! %d',
  --         left_mouse_command = 'buffer %d',
  --         middle_mouse_command = nil,
  --         indicator = {
  --           icon = '▎', -- this should be omitted if indicator style is set to 'icon'
  --         },
  --         buffer_close_icon = '',
  --         modified_icon = '●',
  --         close_icon = '',
  --         left_trunc_marker = '',
  --         right_trunc_marker = '',
  --         max_name_length = 18,
  --         max_prefix_length = 15, -- prefix used when a buffer is deduplicated
  --         tab_size = 18,
  --         show_buffer_close_icons = true,
  --         show_buffer_icons = true,
  --         show_close_icon = true,
  --         show_tab_indicators = true,
  --         persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
  --         -- separator_style = 'slant' | 'thick' | 'thin' | { 'any', 'any' },
  --         enforce_regular_tabs = false,
  --         always_show_bufferline = true,
  --         --sort_by = 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs',
  --       },
  --     }
  --   end,
  -- },

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
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
  -- {
  --   'declancm/cinnamon.nvim',
  --   version = '*', -- use latest release
  --   opts = {
  --     -- change default options here
  --   },
  -- },
}
