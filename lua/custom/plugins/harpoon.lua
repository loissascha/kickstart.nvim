return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      --Harpoon config
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'Add [M]arker to Harpoon' })
      vim.keymap.set('n', '<leader>j', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = '[H]arpoon' })
    end,
  },
}
