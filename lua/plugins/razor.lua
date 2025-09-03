return {
  "seblyng/roslyn.nvim",
  ft = { "cs", "razor" },
  dependencies = {
    { "tris203/rzls.nvim", config = true },
    { "astronvim/astrolsp", opts = { config = { rzls = { ... }, roslyn = { ... } } } },
  },
  opts = { broad_search = true },
}
