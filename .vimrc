let s:this_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" copy everything in vim-scripts/after/colors to ~/.vim/after/colors
" call system("rm -rf ~/.vim/after/colors")
" call system("cp -r ".s:this_dir."/vim-scripts/after/colors ~/.vim/after/colors")


" vim-plug
call plug#begin('~/.vim/plugged')


"Plug 'rust-lang/rust.vim'
Plug 'vim-scripts/SyntaxRange'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'd0c-s4vage/vim-morph'
"Plug 'shawncplus/phpcomplete.vim'

"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"let g:deoplete#enable_at_startup = 1

Plug 'kien/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
"Plug 'guns/xterm-color-table.vim'

"php
"Plug 'shawncplus/phpcomplete.vim'

Plug 'ervandew/supertab'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes', { 'do': ':AirlineTheme tomorrow'}
Plug 'airblade/vim-gitgutter'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/AfterColors.vim'
Plug 'd0c-s4vage/pct-vim', {'branch': 'feature-threads_and_tags'}
"Plug 'd0c-s4vage/pfp-vim'
Plug 'godlygeek/tabular'
Plug 'dhruvasagar/vim-table-mode'

call plug#end()


let mapleader = ","

set laststatus=2

" Folder in which script resides: (not safe for symlinks)
let s:vim_scripts = s:this_dir."/vim-scripts"
for f in split(glob(s:vim_scripts."/*.vim"), '\n')
    exe 'source' f
endfor

exe "source ".s:this_dir."/vim-scripts/after/colors/jellybeans.vim"
