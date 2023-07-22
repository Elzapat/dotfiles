local bg = "#202020"

require("bufferline").setup {
  options = {
    -- indicator_icon = " ",
    indicator = {
      icon = " "
    },
    show_tab_indicators = false,
    show_close_icon = false,
    separator_style = { "", "" },
  },
  highlights = {
    background = {
      bg = bg,
    },
    tab = {
      bg = bg
    },
    tab_selected = {
      bg = bg
    },
    tab_close = {
      bg = bg
    },
    close_button = {
      bg = bg
    },
    close_button_visible = {
      bg = bg
    },
    close_button_selected = {
      bg = bg
    },
    buffer_visible = {
      bg = bg,
    },
    buffer_selected = {
      bg = bg,
    },
    separator_selected = {
      bg = bg
    },
    separator_visible = {
      bg = bg
    },
    separator = {
      bg = bg
    },
    indicator_selected = {
      fg =  bg,
      bg =  bg,
    },
    fill = {
      bg = bg,
      fg = bg,
    },
    modified = {
      bg = bg,
    },
    modified_visible = {
      bg = bg,
    },
    modified_selected = {
      bg = bg,
    },
    pick = {
      bg = bg,
    },
    pick_selected = {
      bg = bg,
    },
    pick_visible = {
      bg = bg,
    },
    duplicate_selected = {
      bg = bg,
    },
    duplicate_visible = {
      bg = bg,
    },
    duplicate = {
      bg = bg,
    },
  }
}

vim.cmd[[highlight BufferLineFill guibg=#282828]]
