vim.pack.add {'https://github.com/folke/tokyonight.nvim'}

vim.cmd.colorscheme 'tokyonight-night'
vim.cmd.hi 'Comment gui=none'

local hl = vim.api.nvim_set_hl
hl(0, "Normal", { bg = "NONE" })
hl(0, "NormalFloat", { bg = "NONE" })
hl(0, "LineNr", { bg = "NONE", fg = "#FFFFFF" })
hl(0, "CursorLine", { bg = "NONE" })

require('tokyonight').setup {
    styles = {
      comments = { italic = false }, -- Disable italics in comments
    },
}
