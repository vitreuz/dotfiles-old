Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

let g:fzf_command_prefix = 'FZF'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
nnoremap <silent> <C-p> :FZFFiles<CR>


Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
autocmd BufEnter * call ncm2#enable_for_buffer()

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'

Plug 'fortes/vim-escuro'

Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'

Plug 'filipekiss/ncm2-look.vim'
Plug 'ncm2/ncm2-go'
Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'

Plug 'w0rp/ale'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-abolish'

Plug 'majutsushi/tagbar'
