" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'tpope/vim-surround' " -> plugin to auto surround sentence with characters like '', <tags> , {}, etc...
Plug 'morhetz/gruvbox' " -> Retro groove color scheme for Vim
Plug 'preservim/nerdtree' " -> Nerdtree file system explorer

call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings

autocmd vimenter * ++nested colorscheme gruvbox	" -> Retro groove scheme thing
