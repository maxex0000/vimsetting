
execute pathogen#infect()

set fileencodings=utf-8,cp950

 "syntax on        " 語法上色顯示
 set nocompatible " VIM 不使用和 VI 相容的模式
 set ai           " 自動縮排
 set tabstop=2    " tab 的字元數
 set softtabstop=2
 set expandtab   " 用 space 代替 tab
 set ruler        " 顯示右下角設定值
 set backspace=2  " 在 insert 也可用 backspace
 set ic           " 設定搜尋忽略大小寫
 "set hlsearch     " 設定高亮度顯示搜尋結果
 set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
 set smartindent  " 設定 smartindent
 set confirm      " 操作過程有衝突時，以明確的文字來詢問
 set history=100  " 保留 100 個使用過的指令
 set cursorline   " 顯示目前的游標位置
 :set number
 :set rnu "relative number
 :filetype on

 set nowrap ts=4 sw=4 ai
"
 set laststatus=2
 set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
 set clipboard^=autoselect
"
" colorscheme torte
" hi TabLineFill ctermfg=Black ctermbg=Gray
 "hi TabLine ctermfg=Black ctermbg=Gray

" hi TabLineSel ctermfg=White ctermbg=Red
" set background=light


 " show trailing white spaces
 highlight WhitespaceEOL ctermbg=cyan guibg=red
 match WhitespaceEOL /\s$/

 set shiftwidth=2 " 設定縮排寬度 = 4

 let g:javascript_plugin_jsdoc = 1
 let g:jsx_ext_required = 0

 colorscheme maxpai
" TODO:
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
 map <F6> <ESC>:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
 map <F3> <ESC>:w<CR>
 imap <F3> <ESC>:w<CR>
 map <F4> <ESC>:set rnu!<CR>
 map <F5> <ESC>:set nu!<CR>
 imap jj <Esc>
 nnoremap <F2> :nohl<CR>
 "強迫不使用方向鍵"
 nnoremap <up> <nop>
 nnoremap <down> <nop>
 nnoremap <left> <nop>
 nnoremap <right> <nop>
 inoremap <up> <nop>
 inoremap <down> <nop>
 inoremap <left> <nop>
 inoremap <right> <nop>
