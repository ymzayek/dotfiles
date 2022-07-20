" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
" YOUR PLUGINS GO HERE
" Make sure you use single quotes
" Examples of plugins installations below

Plug 'junegunn/vim-easy-align'

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fugitive'

Plug 'powerline/powerline'

Plug 'joshdick/onedark.vim'

Plug 'ap/vim-buftabline'

Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'jiangmiao/auto-pairs'

Plug 'dense-analysis/ale'

Plug 'majutsushi/tagbar'

Plug 'vim-scripts/indentpython.vim'

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf'

Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-commentary'

Plug 'ycm-core/YouCompleteMe'

" Initialize plugin system
call plug#end()
"Below go the Vim scripts for even further configuration
