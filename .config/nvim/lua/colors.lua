vim.o.background = "dark"
vim.opt.termguicolors = true

vim.g.gruvbox_flat_style = "dark"
vim.g.gruvbox_theme = {
  BufferLineFill = {
    bg = "#202020"
  },
}
vim.g.gruvbox_transparent = true

vim.g.colors_name = "gruvbox"

-- vim.g.gruvbox_italic_comments = false
vim.g.gruvbox_italic_keywords = false

vim.g.gruvbox_material_background = "soft"
vim.g.gruvbox_material_transparent_background = 1

require("gruvbox").setup({
  contrast = "soft",
  overrides = {
    Background = { bg = "#202020" },
    SignColumn = { bg = "#202020" },
  },
})

-- vim.g.NeoSolarized_termtrans = 1

-- vim.g.colors_name = "nord"

-- vim.g.nord_contrast = true
-- vim.g.nord_borders = false
-- vim.g.nord_disable_background = true
-- vim.g.nord_italic = false
--
-- -- Load the colorscheme
-- local colorscheme = "nord"
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   return
-- end
