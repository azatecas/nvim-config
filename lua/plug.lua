-- [[ plug.lua ]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  -- [[ Plugins Go Here ]]
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }
  use { 'projekt0n/github-nvim-theme' }   -- Github Theme
  use { 'DanilaMihailov/beacon.nvim' }
  use { 'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'Mofiqul/dracula.nvim' }

  use { "catppuccin/nvim", as = "catppuccin" }


  -- [[ Dev Stuff ]]
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use { 'nvim-telescope/telescope-fzf-native.nvim',
      run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }

  use { 'mfussenegger/nvim-dap' }
  use { 'mfussenegger/nvim-jdtls' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }

  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.

  -- wraps hint lines (i thinkk)
  use ({"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
        require("lsp_lines").setup()
    end,
  })

end)

