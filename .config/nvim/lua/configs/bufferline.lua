require("bufferline").setup {
  options = {
    indicator_icon = " ",
    show_tab_indicators = false,
    show_close_icon = false,
    separator_style = { "", "" },
  },
  highlights = {
    background = {
      guibg = "#282828",
    },
    tab = {
      guibg = "#282828"
    },
    close_button = {
      guibg = "#282828"
    },
    close_button_visible = {
      guibg = "#282828"
    },
    close_button_selected = {
      guibg = "#282828"
    },
    buffer_visible = {
      guibg = "#282828",
    },
    buffer_selected = {
      guibg = "#282828",
    },
    separator_selected = {
      guibg = "#282828"
    },
    separator_visible = {
      guibg = "#282828"
    },
    separator = {
      guibg = "#282828"
    },
    indicator_selected = {
      guifg =  "#282828",
      guibg =  "#282828",
    },
    fill = {
      guibg = "#282828",
      guifg = "#282828",
    },
    modified = {
      guibg = "#282828",
    },
    modified_visible = {
      guibg = "#282828",
    },
    modified_selected = {
      guibg = "#282828",
    },
  }
}

vim.cmd[[highlight BufferLineFill guibg=#282828]]
