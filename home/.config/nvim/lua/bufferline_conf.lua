require('bufferline').setup {
  options = {
    numbers = "buffer_id",
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    separator_style = "slant",
    offsets = {{
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }}
  }
}
