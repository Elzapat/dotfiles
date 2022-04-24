local bg = "#202020"

require("bufferline").setup {
  options = {
    indicator_icon = " ",
    show_tab_indicators = false,
    show_close_icon = false,
    separator_style = { "", "" },
  },
  highlights = {
    background = {
      guibg = bg,
    },
    tab = {
      guibg = bg
    },
    tab_selected = {
      guibg = bg
    },
    tab_close = {
      guibg = bg
    },
    close_button = {
      guibg = bg
    },
    close_button_visible = {
      guibg = bg
    },
    close_button_selected = {
      guibg = bg
    },
    buffer_visible = {
      guibg = bg,
    },
    buffer_selected = {
      guibg = bg,
    },
    separator_selected = {
      guibg = bg
    },
    separator_visible = {
      guibg = bg
    },
    separator = {
      guibg = bg
    },
    indicator_selected = {
      guifg =  bg,
      guibg =  bg,
    },
    fill = {
      guibg = bg,
      guifg = bg,
    },
    modified = {
      guibg = bg,
    },
    modified_visible = {
      guibg = bg,
    },
    modified_selected = {
      guibg = bg,
    },
    pick = {
      guibg = bg,
    },
    pick_selected = {
      guibg = bg,
    },
    pick_visible = {
      guibg = bg,
    },
    duplicate_selected = {
      guibg = bg,
    },
    duplicate_visible = {
      guibg = bg,
    },
    duplicate = {
      guibg = bg,
    },
  }
}

vim.cmd[[highlight BufferLineFill guibg=#282828]]
