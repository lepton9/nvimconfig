local rose_pine = {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    vim.cmd 'colorscheme rose-pine'
  end,
}

local catppuccin = {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'catppuccin'
  end,
}

return rose_pine
