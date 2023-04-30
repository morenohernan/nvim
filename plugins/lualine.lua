return {
  { "nvim-lualine/lualine.nvim", event = "VeryLazy",  
    dependencies = {"folke/noice.nvim"},
    opts= {

          sections = {

              lualine_a = {
                  'mode'
              },

              lualine_b = {"%{system('whoami')[:-2]}",'hostname','branch', 'diff'},
              lualine_c = {'diagnostics'},
              lualine_x = {
                    {
                    --'lsp_progress',
                    'filetype',
                    colored = true,   -- Displays filetype icon in color if set to true
                    icon_only = true, -- Display only an icon for filetype
                    icon = { align = 'right' }, -- Display filetype icon on the right hand side
                    -- icon =    {'X', align='right'}
                    -- Icon string ^ in table is ignored in filetype component
                  }
              },
              lualine_y = {
                    {
                    'filename',
                    file_status = true,      -- Displays file status (readonly status, modified status)
                    newfile_status = false,  -- Display new file status (new file means no write after created)
                    path = 1,                -- 0: Just the filename
                                             -- 1: Relative path
                                             -- 2: Absolute path
                                             -- 3: Absolute path, with tilde as the home directory
                                             -- 4: Filename and parent dir, with tilde as the home directory

                    shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                                             -- for other components. (terrible name, any suggestions?)
                    symbols = {
                      modified = '[+]',      -- Text to show when the file is modified.
                      readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                      unnamed = '[No Name]', -- Text to show for unnamed buffers.
                      newfile = '[New]',     -- Text to show for newly created file before first write
                    }
                  },"vim.fn.wordcount().words",'filesize','location'
                },                
               lualine_z = {'%p%%/%L'}, 
          }
      
    
    }, -- opts
  
  },
  {
    "rebelot/heirline.nvim",
    opts = function(opts) opts.statusline = nil end,
  },
 
}