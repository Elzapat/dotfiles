local packer = require("packer").startup(function(use)
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

	use "terrortylor/nvim-comment"

	use "andweeb/presence.nvim"

	use "wakatime/vim-wakatime"
end)

require("plugins.airline")
require("plugins.indent_blankline")
require("plugins.presence")

require("bufferline").setup()
require("nvim-autopairs").setup()
require("nvim_comment").setup()

return packer
