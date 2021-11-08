local not_on_pi = function()
	return vim.api.nvim_eval("hostname()") ~= "morgan-pi"
end

local packer = require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"

	use {
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugins.nvim-treesitter")
		end,
	}

	use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin

	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'

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

	use {
		"sbdchd/neoformat",
		cond = { not_on_pi },
	}

	use {
		"alvan/vim-closetag",
		ft = { "html", "xhtml", "tsx", "jsx", "php" },
	}

	use "ron-rs/ron.vim"

	use {
		"dart-lang/dart-vim-plugin",
		ft = { "dart" },
	}

	use {
		"thosakwe/vim-flutter",
		ft = { "dart" }
	}

	use {
		'Saecki/crates.nvim',
		event = { "BufRead Cargo.toml" },
		requires = { { 'nvim-lua/plenary.nvim' } },
		config = function()
			require('crates').setup()
		end,
	}

	use {
		"iamcco/markdown-preview.nvim",
		ft = { "markdown", "md" }
	}
	
	use {
		"beeender/Comrade"
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
