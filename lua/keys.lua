-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- rempa the key used to leave insert mode
map('i', 'jj', '<Esc>', {})

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})

-- Telescope
map('n', 'ff', [[:Telescope find_files ]], {})   -- Finds file names

map('n', 'fw', [[:Telescope live_grep ]], {})    -- Finds string words

