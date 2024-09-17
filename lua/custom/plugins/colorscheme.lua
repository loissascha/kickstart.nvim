return {
  -- {
  --   'rebelot/kanagawa.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   init = function()
  --     -- vim.cmd.colorscheme 'kanagawa-paper'
  --   end,
  -- },
  -- {
  --   'tanvirtin/monokai.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   init = function()
  --     -- vim.cmd.colorscheme 'monokai'
  --   end,
  -- },
  {
    'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require('github-theme').setup {}
      vim.cmd 'colorscheme github_dark_tritanopia'
    end,
  },
  -- {
  --   'miikanissi/modus-themes.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   init = function()
  --     -- vim.cmd.colorscheme 'monokai'
  --   end,
  -- },
  -- {
  --   'craftzdog/solarized-osaka.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   init = function()
  --     -- vim.cmd.colorscheme 'solarized-osaka'
  --   end,
  -- },
  {
    'slugbyte/lackluster.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      -- vim.cmd.colorscheme 'lackluster'
      -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
      -- vim.cmd.colorscheme("lackluster-mint")
    end,
  },
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    lazy = false,
    priority = 1000,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    init = function()
      -- vim.cmd.colorscheme 'rose-pine'
    end,
    config = function()
      local rosepine = require 'rose-pine'
      rosepine.setup {
        palette = {
          -- moon = {
          --   base = '#161719',
          -- },
        },
      }
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      -- transparent_background = true,
    },
    init = function()
      -- Load the colorscheme here.
      -- vim.cmd.colorscheme 'catppuccin'
    end,
    config = function()
      local catp = require 'catppuccin'
      catp.setup {
        color_overrides = {
          mocha = {
            base = '#161719',
            mantle = '#161719',
            crust = '#161719',
            -- base = '#000000',
            -- mantle = '#000000',
            -- crust = '#000000',
          },
        },
      }
      if vim.g.neovide then
        catp.setup {
          transparent_background = true,
        }
      else
        -- make background transparent when not in neovide for transparency in terminal
        -- catp.setup {
        --   transparent_background = true,
        -- }
      end
    end,
  },
}
