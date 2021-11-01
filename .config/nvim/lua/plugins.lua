local not_on_pi = function()
	return vim.api.nvim_eval("hostname()") ~= "morgan-pi"
end

local packer = require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"

	use {
		"neovim/nvim-lspconfig",
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugins.nvim-treesitter")
		end,
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
	}

	use {
		"andweeb/presence.nvim",
		cond = { not_on_pi },
		config = function()
			require("plugins.presence")
		end,
	}

	use "wakatime/vim-wakatime"

	use {
		"nvim-telescope/telescope.nvim",
		requires = { { 'nvim-lua/plenary.nvim' } },
		cond = { not_on_pi },
		config = function()
			require("plugins.telescope")
		end,
	}

	use "ron-rs/ron.vim"

	use {
		"sbdchd/neoformat",
		cond = { not_on_pi },
	}

	use {
		"alvan/vim-closetag",
		ft = { "html", "xhtml", "tsx", "jsx", "php" },
	}
end)

require("plugins.lspconfig")
require("plugins.nvim-autopairs")
require("plugins.airline")
require("plugins.indent-blankline")
require("plugins.vim-closetag")

require("nvim_comment").setup()
require("bufferline").setup()

return packer
