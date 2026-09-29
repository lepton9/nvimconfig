return {
  "lervag/vimtex",
  lazy = false,
  -- tag = "v2.15",
  config = function()
    -- vim.g.vimtex_view_method = "evince"
    vim.g.vimtex_view_method = "zathura"
    -- vim.g.vimtex_compiler_method = "pdflatex"
  end,
}
