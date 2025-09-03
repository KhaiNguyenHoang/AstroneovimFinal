return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = {
          cmd = {
            vim.fn.stdpath "data" .. "/mason/bin/omnisharp",
            "--languageserver",
            "--hostPID",
            tostring(vim.fn.getpid()),
          },
        },
      },
    },
  },
}
