return {
  "Hoffs/omnisharp-extended-lsp.nvim",
  lazy = true, -- chỉ load khi cần
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    local lspconfig = require "lspconfig"

    lspconfig.omnisharp.setup {
      -- override các handler LSP với plugin
      handlers = {
        ["textDocument/definition"] = require("omnisharp_extended").definition_handler,
        ["textDocument/typeDefinition"] = require("omnisharp_extended").type_definition_handler,
        ["textDocument/references"] = require("omnisharp_extended").references_handler,
        ["textDocument/implementation"] = require("omnisharp_extended").implementation_handler,
      },
    }

    -- optional: keymaps
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "gd", require("omnisharp_extended").lsp_definition, opts)
    vim.keymap.set("n", "gr", require("omnisharp_extended").lsp_references, opts)
    vim.keymap.set("n", "gi", require("omnisharp_extended").lsp_implementation, opts)
    vim.keymap.set("n", "<leader>D", require("omnisharp_extended").lsp_type_definition, opts)
  end,
}
