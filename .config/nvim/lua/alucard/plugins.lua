local fn = vim.fn

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | Lazy
--   augroup end
-- ]])

local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  "wbthomason/packer.nvim",   -- Have packer manage itself
  "nvim-lua/popup.nvim",      -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim",    -- Useful lua functions used by lots of plugins
  "ellisonleao/gruvbox.nvim", -- color scheme

  -- nvim surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-treesitter.configs").setup({
        autotag = {
          enable = true,
        },
      })
    end,
  },

  -- cmp plugins
  "hrsh7th/nvim-cmp",         -- The completion plugin
  "hrsh7th/cmp-buffer",       -- buffer completions
  "hrsh7th/cmp-path",         -- path completions
  "hrsh7th/cmp-cmdline",      -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",

  -- snippets
  "L3MON4D3/LuaSnip",             --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- LSP
  "neovim/nvim-lspconfig",             -- enable LSP
  "williamboman/mason.nvim",           -- simple to use language server installer
  "williamboman/mason-lspconfig.nvim", -- simple to use language server installer
  "jose-elias-alvarez/null-ls.nvim",   -- LSP diagnostics and code actions

  {
    "SmiteshP/nvim-navic",
    dependencies = { { "neovim/nvim-lspconfig" } },
  },

  -- Tresitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },

  -- alpha main page/greeter plugin
  {
    "goolord/alpha-nvim",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end,
  },

  -- comment plugins
  "numToStr/Comment.nvim",
  "JoosepAlviste/nvim-ts-context-commentstring",

  -- file explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    } },
  },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },

  -- lualine status bar
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- bufferline
  { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },

  -- cute guide tab lines
  "lukas-reineke/indent-blankline.nvim",

  -- illuminate words under the cursor
  "yamatsum/nvim-cursorline",

  -- Auto restore sessions
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      })
    end,
  },

  -- sessions integration with telescope
  {
    "rmagatti/session-lens",
    dependencies = { "rmagatti/auto-session", "nvim-telescope/telescope.nvim" },
    config = function()
      require("session-lens").setup()
    end,
  },


  {
    "iamcco/markdown-preview.nvim",
    run = function() fn["mkdp#util#install"]() end,
  },

  -- use {
  --   "rest-nvim/rest.nvim",
  --   rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
  --   config = function()
  --     require("rest-nvim").setup()
  --   end,
  -- }
  'BlackLight/nvim-http',
  'ixru/nvim-markdown',

  {
    'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup()
    end
  },
  {
    'tamton-aquib/duck.nvim',
    config = function()
      vim.keymap.set('n', '<leader>dd', function() require("duck").hatch() end, {})
      vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
    end
  },
  'habamax/vim-godot',
}

local opts = {}

require("lazy").setup(plugins, opts)
