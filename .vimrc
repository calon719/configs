set encoding=utf-8
set fileencoding=utf-8
set t_Co=256
set nocompatible "compatible 是兼容 vi 模式，開啟此功能會有許多 vim 功能無法使用
set hidden "如果設置為 nohidden，Vim 就會在 Buffer 未保存時會跳出提示
"set runtimepath=$VIMRUNTIME
"runtimepath 只放 plugin 的路徑
"$VIMRUNTIME 是隨 Vim 一同發行的 plugins 與 scripts。建議不要在此路徑放自行安裝的文件，這裡的文件很可能會因為升級 Vim 時被覆蓋掉，並且不會給出任何提示

set backup "Vim 自動備份

syntax on "語法 highlight
filetype on "檢測文件類型，所有語法檢測、高亮縮進規則都依賴此功能
filetype indent on "縮進規則，配合上面 filetype 檢測文件類型

set novisualbell "為聽障人士提供可視化提示功能
set visualbell t_vb= "關掉提示鈴

set ruler "在視窗下方顯示尺標
set number "顯示左側行號
set relativenumber "顯示相對行數，與 number 搭配會產生以下四種數字顯示：
"1. nonu nornu: 不顯示行號
"2. nu nornu: 只顯示行號
"3. nonu rnu: 光標所在行數為 0，上下行數顯示相對行號（搭配 hjkl 移動）
"4. nu rnu: 光標所在行數為當前行數，上下行數顯示相對行號（搭配 hjkl 移動）
set cursorline "highlight 光標所在行數，會將所有行 redrawing，導致變慢

set showcmd "在視窗下面顯示未完成指令
set showmode "在視窗下面顯示當前模式，未顯示任何模式時為 normal mode

set scrolloff=3 "當光標距離視窗頂端或底部所設定的行數時會自動捲動視窗
set backspace=indent,eol,start "indent、eol、start 分別代表：縮進位置、行結束符、段首。這個設置使得這些地方可以使用 backspace
set showmatch "當輸入成對的括號時，會自動跳轉並高亮對應的括號在跳回原光標位置
set matchtime=0 "設定 showmatch 跳轉時間，1 = 1/10 秒，設定 0 為禁止跳轉

set hlsearch "高亮搜尋模式結果
set incsearch "打開增量搜索模式，即時更新當前輸入的內容，要注意最後還是要按下 enter（回車鍵）匹配結果
set ignorecase "搜索時忽略大小寫，臨時需要嚴謹匹配的時候可以使用 \C
set smartcase "當在搜索模式輸入大寫時會進入嚴謹搜索，輸入只小寫時會忽略大小寫

set expandtab "將 <TAB> 取代成相對應格數的 <SPACE>
set smarttab "只作用於行首，配合 shiftwidth 使用。開啟時在行首鍵入 <TAB> 會填充 shiftwidth 所設定的值。在其他地方則會填充 tabstop 的值
set autoindent "自動縮進，會受到 smartindent 的影響
set smartindent
set shiftwidth=2 "每一次縮進的空白格數，當使用自動格式化或手動縮進時就是使用這裡所設定的值
set tabstop=2 "<TAB> 所代表的空白格數
set softtabstop=2 "開啟時當使用 <BS> 刪除 <TAB> 所填充的空白時，會刪除所設定的值的空白數。對 <SPACE> 插入的空白沒有影響

set list listchars=tab:→\ ,trail:·,eol:¬
"list 開顯示不可見字符
"listchars(lsc) 自訂不可見字符顯示符號
"eol: 行結束符、trail: 行尾空格

set clipboard^=unnamed,unnamedplus "讓寄存器和系統剪貼簿內容同步

"map start
noremap <F3> <Esc>gg=G

"toggle search highlight
let hlstate=0
nnoremap <F5> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>
"map end

"Plugin start
call plug#begin('~/.vim/plugged')

"colorscheme
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'

"A collection of language packs for Vim
Plug 'sheerun/vim-polyglot'

"returns the name of the git branch
Plug 'itchyny/vim-gitbranch'

"emmet
Plug 'mattn/emmet-vim'

call plug#end()
"Plugin end

colorscheme onedark

"lightline.vim setting start
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
"lightline.vim setting end

"微調 colorscheme 配色
highlight LineNr ctermbg=NONE ctermfg=gray
highlight CursorLineNr cterm=bold ctermbg=NONE ctermfg=yellow 
"CursorLineNr 需開啟 cursorline

