return {
  {
    'whonore/Coqtail',
    init = function()
      vim.g.loaded_coqtail = 1
      vim.g["coqtail#supported"] = 0
    end
  },

  {
    'tomtomjhj/vsrocq.nvim',
    filetypes = 'coq',
    lazy = true,
    dependecies = {
      'neovim/nvim-lspconfig',
      'whonore/Coqtail',
    },

    config = function()
      require 'vsrocq'.setup {
        vsrocq = {
          proof = {
            -- In manual mode, don't move the cursor when stepping forward/backward a command
            cursor = { sticky = false },
          },
        },
        lsp = {
          on_attach = function(client, bufnr)
            -- your mappings, etc

            -- In manual mode, use ctrl-alt-{j,k,l} to step.
            vim.keymap.set({ 'n', 'i' }, '<C-M-j>', '<Cmd>VsRocq stepForward<CR>',
              { buffer = bufnr, desc = 'VsRocq step forward' })
            vim.keymap.set({ 'n', 'i' }, '<C-M-k>', '<Cmd>VsRocq stepBackward<CR>',
              { buffer = bufnr, desc = 'VsRocq step backward' })
            vim.keymap.set({ 'n', 'i' }, '<C-M-l>', '<Cmd>VsRocq interpretToPoint<CR>',
              { buffer = bufnr, desc = 'VsRocq interpret to point' })
            vim.keymap.set({ 'n', 'i' }, '<C-M-G>', '<Cmd>VsRocq interpretToEnd<CR>',
              { buffer = bufnr, desc = 'VsRocq interpret to end' })
          end
          -- autostart = false, -- use this if you want to manually `:LspStart vscoqtop`.
          -- cmd = { 'vscoqtop', '-bt', '-vscoq-d', 'all' }, -- for debugging the server
        }
      }
    end,

  }
}
