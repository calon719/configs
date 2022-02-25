call plug#begin('~/.vim/plugged')
"colorscheme
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons' "檔案 icon
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "icon 顏色

Plug 'sheerun/vim-polyglot' "A collection of language packs for Vim
Plug 'itchyny/vim-gitbranch' "returns the name of the git branch
Plug 'scrooloose/syntastic' "針對程式碼進行檢查
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter' "快速註解
Plug 'preservim/nerdtree' "樹狀檔案管理 
Plug 'jiangmiao/auto-pairs' "自動補全對稱符
Plug 'chrisbra/Colorizer' "顏色提示
Plug 'tpope/vim-surround' "快速包圍
Plug 'leafOfTree/vim-vue-plugin' "格式化 .vue 檔

call plug#end()
"----------------------------"

colorscheme one
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi CursorLine cterm=NONE ctermbg=237 ctermfg=NONE
hi CursorLineNr ctermbg=237
hi VertSplit term=reverse ctermfg=32 ctermbg=236

"nerdtree-syntax-highlight config
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['vue'] = '42b883'

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
