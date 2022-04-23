local not_on_pi = function()
	return vim.api.nvim_eval("hostname()") ~= "morgan-pi"
end

local not_started_by_firenvim = function()
	return vim.api.nvim_eval("exists('g:started_by_firenvim')") == 0
end

local packer = require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "sheerun/vim-polyglot"

	use {
		"nvim-treesitter/nvim-treesitter",
		config = function()
			-- require("configs.nvim-treesitter")
	  end,
	}

	use {
		"neovim/nvim-lspconfig"
	}

	--use {
	--	'neovim/nvim-lspconfig',
		-- commit = "d52e45acf9a55b025ce9c0161b922a814b65b631",
	--	after = "cmp-nvim-lsp",
		-- config = {
		-- 	show_line_diagnostices = function()
		-- 		local opts = {
		-- 			focusable = false,
		-- 			close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
		-- 			border = "rounded",
		-- 			source = "always",
		-- 			prefix = " "
		-- 		}
		-- 		vim.diagnostics.open_float(nil, opts)
		-- 	end,
		-- }
	--}
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin

	use {
		"simrat39/rust-tools.nvim",
		ft = { "rust", "rs" },
	}

	use {
		"lervag/vimtex",
		ft = { "tex", "plaintex" },
	}

	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'

	use "kyazdani42/nvim-web-devicons"

	use {
		"akinsho/bufferline.nvim",
		-- cond = { not_started_by_firenvim },
	}

	use {
		"windwp/nvim-autopairs",
	}

	use {
		"nvim-lualine/lualine.nvim"
	}

	use {
		"lukas-reineke/indent-blankline.nvim",
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
			require("configs.presence")
		end,
	}

	use "wakatime/vim-wakatime"

	use {
		"nvim-telescope/telescope.nvim",
		requires = { { 'nvim-lua/plenary.nvim' } },
		cond = { not_on_pi },
		config = function()
			require("configs.telescope")
		end,
	}

	use {
		"sbdchd/neoformat",
	}

	use {
		"alvan/vim-closetag",
		ft = { "html", "xhtml", "tsx", "jsx", "php", "twig", "html.twig", "markdown", "handlebars" },
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
		run = "cd app && yarn install",
		ft = { "markdown", "md" },
	}

	use {
		"jalvesaq/Nvim-R",
		ft = { "r" },
	}

	-- Themes
	use {
		"ellisonleao/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" }
	}
	use "ishan9299/nvim-solarized-lua"
	use "eddyekofo94/gruvbox-flat.nvim"
	use "folke/tokyonight.nvim"
	use "nanotech/jellybeans.vim"
	use "shaunsingh/nord.nvim"

	use "dstein64/vim-startuptime"

	use {
		"glacambre/firenvim",
		cond = { not_on_pi },
		run = function() vim.fn['firenvim#install'](0) end
	}
end)

require("configs.nvim-autopairs")
require("configs.airline")
require("configs.indent-blankline")
require("configs.vim-closetag")
require("configs.neoformat")
require("configs.lspconfig")
require("configs.vimtex")
require("configs.nvim-web-devicons")
require("configs.firenvim")
require("configs.bufferline")
require("configs.lualine")
-- require("configs.rust-tools") 

require("nvim_comment").setup()

return packer
