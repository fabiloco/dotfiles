" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'tpope/vim-surround' " -> plugin to auto surround sentence with characters like '', <tags> , {}, etc...
Plug 'morhetz/gruvbox' " -> Retro groove color scheme for Vim
Plug 'preservim/nerdtree' " -> Nerdtree file system explorer
Plug 'vim-airline/vim-airline' " -> Status bar with git integration and others
Plug 'vim-airline/vim-airline-themes'  " Temas para airline

call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings

" NERDTree configs
" Toggle NERDTree with f2
map <F2> :NERDTreeToggle<CR> 

" Theme configs -> Retro groove
autocmd vimenter * ++nested colorscheme gruvbox	" -> Retro groove scheme thing

" Vim-airline configs
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline_powerline_fonts = 1 " -> enable powerline font
let g:airline_theme='gruvbox' " -> setting gruvbox color scheme in airline
