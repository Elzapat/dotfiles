return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"

	use "neovim/nvim-lspconfig"

	use "kyazdani42/nvim-web-devicons"

	use "akinsho/bufferline.nvim"

	use "windwp/nvim-autopairs"

	use "vim-airline/vim-airline"
	use "vim-airline/vim-airline-themes"

	use "lukas-reineke/indent-blankline.nvim"

	use { "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } }

	use {
		"OmniSharp/omnisharp-vim",
		ft = { "cs" }
	}
end)
