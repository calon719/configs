call plug#begin('~/.vim/plugged')
"colorscheme
"Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'


Plug 'itchyny/lightline.vim' "狀態列
Plug 'mengelbrecht/lightline-bufferline'
Plug 'sheerun/vim-polyglot' "A collection of language packs for Vim
Plug 'itchyny/vim-gitbranch' "returns the name of the git branch
Plug 'scrooloose/syntastic' "針對程式碼進行檢查
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter' "快速註解
Plug 'preservim/nerdtree' "樹狀檔案管理 
Plug 'jiangmiao/auto-pairs' "自動補全對稱符
Plug 'chrisbra/Colorizer' "顏色提示
Plug 'tpope/vim-surround' "快速包圍
"Plug 'ryanoasis/vim-devicons' "檔案圖示
Plug 'leafOfTree/vim-vue-plugin' "格式化 .vue 檔

call plug#end()

"----------------------------"
colorscheme nord

"lightline.vim setting start
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

" lightline-buffer ui settings
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#enable_devicons = 1

"lightline.vim setting end

"微調 colorscheme 配色
"highlight LineNr ctermbg=NONE ctermfg=gray
"CursorLineNr 需開啟 cursorline
"highlight CursorLineNr cterm=bold ctermbg=NONE ctermfg=yellow  

"vim-emmet config
let g:user_emmet_expandabbr_key = '<c-e>'

" Syntastic config start
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'
" Syntastic config end

"vim-vue-plugin config start
let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css', 'scss', 'sass'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 0,
      \'debug': 0,
      \}
"vim-vue-plugin config end

"nerdtree config
let NERDTreeShowHidden=1

"nerdcommenter config
let g:NERDSpaceDelims=1
