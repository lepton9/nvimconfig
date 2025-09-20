return {
  'folke/tokyonight.nvim',
  -- 'nyoom-engineering/oxocarbon.nvim',
  -- 'EdenEast/nightfox.nvim',
  -- 'catppuccin/nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- vim.cmd.colorscheme 'catppuccin'
    vim.cmd.colorscheme 'tokyonight-night'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'


    local hl = vim.api.nvim_set_hl
    hl(0, "Normal", { bg = "NONE" })
    hl(0, "NormalFloat", { bg = "NONE" })
    hl(0, "LineNr", { bg = "NONE", fg = "#FFFFFF" })
    hl(0, "CursorLine", { bg = "NONE" })
  end,

}
