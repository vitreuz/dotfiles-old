" Use '-' to enter explore
nnoremap <silent> - :Explore<CR>

" Use <ENTER> to save a file in NORMAL mode
nnoremap <expr> <CR> wildmenumode() ? "<CR>" : ":w<CR>"

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

