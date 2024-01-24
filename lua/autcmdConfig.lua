-- en before write the buffer i wanna formt
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
