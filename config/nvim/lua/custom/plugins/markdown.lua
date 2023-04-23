-- currently does not work
return {
  "preservim/vim-markdown",
  config = function ()
    vim.g.vim_markdown_folding_disabled = true
    vim.g.vim_markdown_frontmatter = true
    vim.g.vim_markdown_toml_frontmatter = true
  end
}
