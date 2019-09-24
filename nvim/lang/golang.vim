  let g:go_fmt_command='goimports'
  let g:go_gocode_unimported_packages=1

  let g:go_highlight_array_whitespace_error = 0

" Launch gopls when Go files are in use
let g:LanguageClient_serverCommands = {
       \ 'go': ['gopls']
       \ }

" Run gofmt on save
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

