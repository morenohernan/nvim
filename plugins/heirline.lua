return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    opts.tabline = nil,
    opts.statusline={
      showtabline = 0,
    }
  end,
}