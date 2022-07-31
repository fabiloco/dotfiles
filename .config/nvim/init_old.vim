source $HOME/.config/nvim/vim-plug/plugins.vim

set exrc
set tabstop=4 softtabstop=4
set relativenumber
set scrolloff=8
set signcolumn=yes

syntax enable
colorscheme tender

" Nerdtree keymaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Telescope keymaps
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>



lua require("mason").setup()
lua require("mason-lspconfig").setup()

