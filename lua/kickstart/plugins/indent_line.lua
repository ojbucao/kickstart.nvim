return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {
      indent = {
        char = '┊',  -- Use a thin dotted line
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        char = '│',  -- Slightly thicker for current scope
      },
    },
    config = function(_, opts)
      require('ibl').setup(opts)
      -- Set very subtle colors for the indent guides
      local hooks = require('ibl.hooks')
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#2d2d2d' })  -- Even more subtle gray
        vim.api.nvim_set_hl(0, 'IblScope', { fg = '#3c3836' })   -- Slightly brighter for current scope
      end)
    end,
  },
}
