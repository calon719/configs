call plug#begin('~/.vim/plugged')
"colorscheme
Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'ryanoasis/vim-devicons' "檔案 icon
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "icon 顏色

Plug 'sheerun/vim-polyglot' "A collection of language packs for Vim
Plug 'scrooloose/syntastic' "針對程式碼進行檢查
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter' "快速註解
Plug 'preservim/nerdtree' "樹狀檔案管理 
Plug 'jiangmiao/auto-pairs' "自動補全對稱符
Plug 'chrisbra/Colorizer' "顏色提示
Plug 'tpope/vim-surround' "快速包圍
Plug 'leafOfTree/vim-vue-plugin' "格式化 .vue 檔
Plug 'itchyny/vim-gitbranch' "returns the name of the git branch
" Plug 'APZelos/blamer.nvim' "查看 git commit
" Plug 'airblade/vim-gitgutter' "查看這次 commit 新增修改內容

call plug#end()
"----------------------------"

colorscheme one
set background=dark
hi Normal ctermbg=NONE
hi CursorLine cterm=NONE ctermbg=237 ctermfg=NONE
hi CursorLineNr ctermbg=237
hi SignColumn ctermbg=NONE
hi VertSplit term=reverse ctermfg=32 ctermbg=NONE 
hi SpecialKey ctermfg=242
hi NonText ctermfg=242

"nerdtree-syntax-highlight config
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['vue'] = '42b883'

"lightline config
function! GitbranchIcon()
  return " ".gitbranch#name()
endfunction

set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ]],
      \   'right': [ [ 'percent' ],
      \              [ 'lineinfo' ],
      \              [ 'filetype' ]]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component': {
      \   'filetype': '%{WebDevIconsGetFileTypeSymbol()} %Y',
      \   'lineinfo': ' %c:%l/%L',
      \   'close': ' buffers '
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \ },
      \ 'component_function': {
      \   'gitbranch': 'GitbranchIcon',
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel',
      \ },
      \ 'separator': { 'left': "\ue0b8", 'right': "\ue0ba " },
      \ 'subseparator': { 'left': "\ue0b9", 'right': "\ue0b9" }
      \ }

" lightline-buffer ui settings
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#enable_devicons = 1

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

"rainbow config
let g:rainbow_active = 1

"git blamer config
" let g:blamer_delay = 500
" let g:blamer_enabled = 1
" let g:blamer_show_in_visual_modes = 0
" let g:blamer_show_in_insert_modes = 0
