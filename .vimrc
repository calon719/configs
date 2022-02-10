set nocompatible "compatible 是兼容 vi 模式，開啟此功能會有許多 vim 功能無法使用
set hidden "如果設置為 nohidden，Vim 就會在 Buffer 未保存時會跳出提示
"set runtimepath=$VIMRUNTIME 
"runtimepath 只放 plugin 的路徑
"$VIMRUNTIME 是隨 Vim 一同發行的 plugins 與 scripts。建議不要在此路徑放自行安裝的文件，這裡的文件很可能會因為升級 Vim 時被覆蓋掉，並且不會給出任何提示。

syntax on "語法 highlight
filetype on "檢測文件類型，所有語法檢測、高亮縮進規則都依賴此功能。
filetype indent on "縮進規則，配合上面 filetype 檢測文件類型。

set backup "Vim 自動備份

set novisualbell "為聽障人士提供可視化提示功能
set visualbell t_vb= "關掉提示鈴

set ruler "在視窗下方顯示尺標
set number "顯示左側行號
set relativenumber "顯示相對行數，與 number 搭配會產生以下四種數字顯示：
"1. nonu nornu: 不顯示行號
"2. nu nornu: 只顯示行號
"3. nonu rnu: 光標所在行數為 0，上下行數顯示相對行號（搭配 hjkl 移動）
"4. nu rnu: 光標所在行數為當前行數，上下行數顯示相對行號（搭配 hjkl 移動）

