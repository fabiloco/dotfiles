" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    "Plug 'scrooloose/NERDTree'
    Plug 'kyazdani42/nvim-tree.lua'

    " icons
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    "colorschemes
    Plug 'jacoborus/tender.vim'
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'wojciechkepka/vim-github-dark'

    Plug 'https://github.com/sheerun/vim-wombat-scheme'

    " Find files
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    

    " commenter plugin
    Plug 'preservim/nerdcommenter'

    " vim-closetag
    Plug 'alvan/vim-closetag'

    " Hightlight current line
    Plug 'miyakogi/conoline.vim'


    " editorconfig vim plugin support 
    Plug 'gpanders/editorconfig.nvim'

    " status bar
    Plug 'itchyny/lightline.vim'

    " Tree sitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " LSP Support
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'

    " Autocompletion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'

    "  Snippets
    Plug 'L3MON4D3/LuaSnip'

    Plug 'rafamadriz/friendly-snippets'

    " lsp configs
    Plug 'VonHeikemen/lsp-zero.nvim'
call plug#end()
