" Install vim-plug if not found.
let data_dir = has('nvim') ? '~/.config/nvim' : '~/.vim'

if empty(glob(data_dir.'/autoload/plug.vim'))
  " This pair of commands works under Cygwin as well as Linux.
  silent execute '!mkdir -p '.data_dir.'/autoload'
  silent execute '!curl -fL https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim >'.data_dir.'/autoload/plug.vim'
endif

" Run PlugInstall if there are missing plugins.
autocmd VimEnter *
\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \ | PlugInstall --sync | source $MYVIMRC
\ | endif

" Plugins
call plug#begin('~/.config/nvim/plugged')

" Include plugins.
source ~/.config/nvim/plugins.vim

call plug#end()

" Include custom functions.
source ~/.config/nvim/functions.vim

" Include custom key mappings
source ~/.config/nvim/keymaps.vim

" Include custom settings.
source ~/.config/nvim/settings.vim
