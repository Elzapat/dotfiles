local packer = require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"

	use {
		"neovim/nvim-lspconfig",
	}

	use {
		"nvim-treesitter/nvim-treesitter",
	}

	use "kyazdani42/nvim-web-devicons"

	use {
		"akinsho/bufferline.nvim",
	}

	use {
		"windwp/nvim-autopairs",
	}

	use {
		"vim-airline/vim-airline",
	}
	use "vim-airline/vim-airline-themes"

	use {
		"lukas-reineke/indent-blankline.nvim",
	}

	use {
		"ellisonleao/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" }
	}

	use {
		"OmniSharp/omnisharp-vim",
		ft = { "cs" }
	}

	use {
		"terrortylor/nvim-comment",
		config = function()
		end,
	}

	use {
		"andweeb/presence.nvim",
	}

	use "wakatime/vim-wakatime"

	use {
		"nvim-telescope/telescope.nvim",
		requires = { { 'nvim-lua/plenary.nvim' } },
		config = function()
		end,
	}

	use "ron-rs/ron.vim"

	use "sbdchd/neoformat"

	-- use "windwp/nvim-ts-autotag"

	use {
		"alvan/vim-closetag",
		ft = { "html", "xhtml", "tsx", "jsx", "php" },
	}
end)

require("plugins.lspconfig")
require("plugins.nvim-treesitter")
require("plugins.nvim-autopairs")
require("plugins.airline")
require("plugins.indent-blankline")
require("plugins.presence")
require("plugins.telescope")
require("plugins.vim-closetag")

require("nvim_comment").setup()
require("bufferline").setup()

return packer
