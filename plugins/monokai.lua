return {
      "loctvl842/monokai-pro.nvim",
      config = function()
        require("monokai-pro").setup({
          filter = "classic",

        plugins = {
          bufferline = {
            underline_selected = true,
            underline_visible = true,
          },
          indent_blankline = {
            context_highlight = "pro", -- default | pro
            context_start_underline = true,
          },
        },
          override = function(colors)
            return {
                    CursorColumn = {
                      bg = colors.base.dimmed5,
                    },
              }
          end
        })
      end,      
}
