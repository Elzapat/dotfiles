local packer = require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"

	use "neovim/nvim-lspconfig"

	use "nvim-treesitter/nvim-treesitter"

	use "kyazdani42/nvim-web-devicons"

	use "akinsho/bufferline.nvim"

	use "windwp/nvim-autopairs"

	use "windwp/nvim-ts-autotag"

	use "vim-airline/vim-airline"
	use "vim-airline/vim-airline-themes"

	use "lukas-reineke/indent-blankline.nvim"

	use {
		"ellisonleao/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" }
	}

	use {
		"OmniSharp/omnisharp-vim",
		ft = { "cs" }
	}

	use "terrortylor/nvim-comment"

	use "andweeb/presence.nvim"

	use "wakatime/vim-wakatime"

	use {
		"nvim-telescope/telescope.nvim",
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		"simrat39/rust-tools.nvim",
		requires = {
			"neovim/nvim-lspconfig",
			"nvim-lua/popup.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"mfussenegger/nvim-dap",
		}
	}

	use "ron-rs/ron.vim"
end)

require("plugins.airline")
require("plugins.indent-blankline")
require("plugins.presence")
require("plugins.telescope")
require("plugins.nvim-autopairs")
require("plugins.nvim-treesitter")

require("bufferline").setup()
require("nvim_comment").setup()
require("rust-tools").setup()
require("nvim-ts-autotag").setup()
-- require("nvim-treesitter.configs").setup {}

return packer
