set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" color
Plugin 'flazz/vim-colorschemes'

" the nerd tree
Plugin 'scrooloose/nerdtree'

" surround
Plugin 'tpope/vim-surround'

" javascript auto completion
Plugin 'marijnh/tern_for_vim'

" javascript
Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

syntax on
colorscheme 0x7A69_dark

"Nerd Tree
map <C-f> :NERDTreeToggle<CR>

" cursor where exactly left off
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

set number

" for YouCompleteMe
let g:ycm_server_python_interpreter = 'python2'

" tern for javascript
let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1

" indentation
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" tab line
" "set list lcs=tab:\│\ 

" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" set foldmethod=syntax
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "↲"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇀"
set conceallevel=1

" non-VI compatibilities
set nocp
set clipboard=unnamed
set clipboard=unnamedplus
set hlsearch
set ignorecase

" auto complete for ( , " , ' , [ , {
inoremap        (  ()<Left><Left><Space><Right><Space><Space><Left>
inoremap        "  ""<Left>
inoremap        `  ``<Left>
inoremap        '  ''<Left>
inoremap        [  []<Left><Left><Space><Right><Space><Space><Left>
inoremap      {  {}<Left><Left><Space><Right><Return><Return><Up><Tab>

" auto comment and uncooment with F6 and F7 key
autocmd FileType c,cpp,java,scala,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
noremap <silent> #6 :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> #7 :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" paste mode
set pastetoggle=<F2>
