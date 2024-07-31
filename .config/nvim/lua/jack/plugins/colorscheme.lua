return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    -- Theme inspired by Atom
  require("onedark").setup({
    style = "cool",
  })
    -- load the colorscheme here
  vim.cmd([[colorscheme onedark]])
    end,
  }
