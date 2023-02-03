local autoformat_files = {
  "*.go",
  "*.rs",
  "*.js",
  "*.ts"
}

for _, filetype in ipairs(autoformat_files) do
  vim.cmd(
    [[ autocmd BufWritePre ]] .. filetype .. [[ lua vim.lsp.buf.formatting_sync() ]]
  )
end

