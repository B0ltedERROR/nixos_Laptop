return {
  -- add gruvbox
  { "savq/melange-nvim" },
  -- Configure LazyVim to load gruvbox
  {
 --   "LazyVim/LazyVim",
 --   opts = {
 --     -- colorscheme = "melange",
 --     colorscheme = "tokyonight",
 --   },
 -- },
    "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
},
}
