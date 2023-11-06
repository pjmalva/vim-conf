require'nvim-treesitter.configs'.setup {
  ensure_installed = {  "javascript", "bash", "css", "dart", "dockerfile", "gitignore", "go", "html", "json", "json5", "php", "python", "svelte", "tsx", "typescript", "vue", "xml", "rust", "c", "lua", "vim", "vimdoc", "query" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = 2
  }
}
