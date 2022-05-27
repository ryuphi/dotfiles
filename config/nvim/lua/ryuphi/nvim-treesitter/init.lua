require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "go", "typescript", "javascript", "tsx", "vue", "scss", "lua", "json", "gomod", "dot", "css"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = false,
    max_file_lines = nil
  }
}
