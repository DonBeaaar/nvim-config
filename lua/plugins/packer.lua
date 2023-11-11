local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- My plugins here
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-sensible'
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use {
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-telescope/telescope-live-grep-args.nvim" },
		},config = function()
			require("telescope").load_extension("live_grep_args")
		end
	}
	use 'lewis6991/gitsigns.nvim'
	use 'tpope/vim-fugitive'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use {
    'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
	    end
	}
	use "windwp/nvim-autopairs"
	use 'mfussenegger/nvim-dap'
	use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
	use {
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npm run compile"
	}
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	use 'theHamsta/nvim-dap-virtual-text'
	use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end
	}
	-- Completion
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lua'
	use 'onsails/lspkind.nvim'
	use 'saadparwaiz1/cmp_luasnip'
	use {
  'norcalli/nvim-colorizer.lua',
   config = function()
      require('colorizer').setup()
   end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    tag = 'nightly'
  }
  use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
          require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'ThePrimeagen/harpoon'
	use "rebelot/kanagawa.nvim"
	use 'nikvdp/ejs-syntax'
	use 'tpope/vim-surround'
	use 'mbbill/undotree'
	use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
	}
  use 'windwp/nvim-ts-autotag'
  use {
    "ibhagwan/fzf-lua",
    requires = { "nvim-tree/nvim-web-devicons" }
  }
  use { "junegunn/fzf", run = "./install --bin" }
  use { 'joeveiga/ng.nvim'}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
