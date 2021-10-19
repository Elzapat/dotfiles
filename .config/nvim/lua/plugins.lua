vim.cmd [[ packadd packer.nvim ]]

return require("packer").startup(function(use)
	use "wbthomason/packet.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"
end)
