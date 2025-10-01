-- lua/plugins/colorscheme.lua
return {
  -- 1) Add the VSCode theme plugin
  {
    "Mofiqul/vscode.nvim",
    lazy = true,
    opts = {
      -- You can choose the style: "dark" (default), "light", or "darker"
      -- style = "dark",

      transparent = false, -- set true for transparent background
      italic_comments = true, -- make comments italic
      italic_inlayhints = true, -- italic for LSP inlay hints
      underline_links = true,
      disable_nvimtree_bg = true,
      terminal_colors = true,

      -- Optional: fine-tune colors / highlights (examples)
      -- color_overrides = { vscLineNumber = "#FFFFFF" },
      -- group_overrides = function(c)
      --   return {
      --     Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
      --   }
      -- end,
    },
    config = function(_, opts)
      require("vscode").setup(opts) -- configure the theme
      vim.cmd.colorscheme("vscode") -- load it
    end,
  },

  -- 2) Tell LazyVim to use "vscode" as the default colorscheme
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "vscode" },
  },
}
