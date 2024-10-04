--[[ init.lua ]] 

-- LEADER These keybindings need to be defined before the first
-- is called; otherwise, it will default to "\"

vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
 require('vars')      -- Variables
 require('opts')      -- Options
 require('keys')      -- Keymaps
 require('plug')      -- Plugins

-- PLUGINS: Add this section
 require('nvim-tree').setup()

 require('lualine').setup {
    options = {
        theme = 'dracula-nvim'	
    }
 }

  require'lspconfig'.tsserver.setup {}

-- hint line shortener
 require('lsp_lines').setup()

-- Telescope stuff
 require('telescope').setup({
    defaults = {
        path_display = {
            shorten = {
                len = 3, exclude = {1, -1}
            },
            truncate = true
        },
         dynamic_preview_title = true,
    },
    extensions = {
        fzf = {
            fuzzy = true,                     -- false will only do exact matching
            override_generic_sorter = true,   -- override the generic sorter
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
 })

