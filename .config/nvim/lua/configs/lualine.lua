local gruvbox = require("lualine.themes.gruvbox")

local bg = "#282828"
local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }

for _, mode in ipairs(modes) do
  gruvbox[mode].a.fg = gruvbox[mode].a.bg
  gruvbox[mode].a.bg = bg
end

for _, mode in ipairs(modes) do
  for _, section in ipairs({ "a", "b", "c" }) do
    gruvbox[mode][section].fg = gruvbox[mode].a.fg
    gruvbox[mode][section].bg = bg
  end
end

require("lualine").setup {
  options = {
    theme = gruvbox,
  },
  sections = {
    lualine_a = {
      {
        "mode",
        padding = { left = 0, right = 1 },
      }
    },
    lualine_z = {
      {
        "location",
        padding = { left = 1, right = 0 },
      }
    }
  }
}
