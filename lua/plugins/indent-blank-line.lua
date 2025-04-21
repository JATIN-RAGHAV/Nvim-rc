return{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl", -- important: v3+ uses this as main entry
  opts = {
    indent = { char = "│" },
    scope = {
      enabled = true,
      show_start = false,
      show_end = false,
      highlight = { "Function", "Label" },
    },
  }
}
