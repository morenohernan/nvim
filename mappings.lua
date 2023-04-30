-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"

    ["<leader>uv"] = { "<cmd>ASToggle<cr>", desc = "Toogle Autosave"},
    ["<Tab>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<S-Tab>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
  desc = "Previous buffer",},

    ["<leader>s"]= {"<cmd>SymbolsOutline<cr>", desc = "Toogle Symbols outline" },

    ['<leader>ef']={'<cmd>Neotree position=left filesystem<cr>', desc="Focus in Neotree filesystem"},
    ['<leader>eb']={'<cmd>Neotree position=left buffers<cr>', desc="Focus in Neotree buffers"},
    ['<leader>eg']={'<cmd>Neotree position=left git_status<cr>', desc="Focus in Neotree git status"},
    ['<leader>eF']={'<cmd>Neotree position=float filesystem<cr>', desc="Focus in Neotree float filesystem"},
    ['<leader>eB']={'<cmd>Neotree position=float buffers<cr>', desc="Focus in Neotree float buffers"},
    ['<leader>eG']={'<cmd>Neotree position=float git_status<cr>', desc="Focus in Neotree float git status"},

    ["<leader>b"] = { name = "Buffers" },    
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },

    ["<leader>bb"] = false,
    ["<leader>bd"] = false,
    ["<leader>bD"] = false,
    ["<leader>b\\"] = false,
    ["<leader>b|"] = false,
    
    ["<leader>bs"] = false,
    ["<leader>bse"] = false,
    ["<leader>bsr"]= false,
    ["<leader>bsp"]= false,
    ["<leader>bsi"]= false,
    ["<leader>bsm"]= false,

    ["<leader>fp"] = {'<cmd>Telescope projects<cr>', desc="Find Projects"},
    
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
    --   end,
    --   desc = "Pick to close",
    -- },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
