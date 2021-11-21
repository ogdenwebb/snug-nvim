-- NOTE: to make config keyword works - use :PackerCompile

-- Init packer to manage plugins
return require('packer').startup(function()
  -- Core plugins
  use "wbthomason/packer.nvim" -- Packer can manage itself
  use "LionC/nest.nvim"  -- Neovim utility plugin to define keymaps
  use "dstein64/vim-startuptime" -- profiling startup time.

  -- A super powerful autopair for Neovim
  use {
    'windwp/nvim-autopairs',
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  -- reopen files at your last edit position
  use 'ethanholz/nvim-lastplace'

  -- Smart and powerful comment plugin for neovim
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Neovim fuzzy finder/picker written in Lua
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Project management
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Completions
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Indent guides for Neovim
  use {
    'lukas-reineke/indent-blankline.nvim'
  }

  --  A surround text object plugin for neovim written in Lua.
  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }

  -- vim match-up: even better %
  use "andymass/vim-matchup"

  -- A Vim alignment plugin
  use "junegunn/vim-easy-align"

  -- Languages support
  use "alaviss/nim.nvim"

  -- Status line
  use {
    'famiu/feline.nvim',
    requires = { {'kyazdani42/nvim-web-devicons'} },
    -- config = function()
    --   require('feline').setup()
    -- end
  }

  -- Color schemes
  use "EdenEast/nightfox.nvim"
end)
