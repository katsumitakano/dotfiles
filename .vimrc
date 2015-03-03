" vimrcへのショートカット
nnoremap <Space>.   :<C-u>edit $MYVIMRC<Enter>
nnoremap <Space><Space>.  :<C-u>source $MYVIMRC<Enter>

" キーバインディング
noremap j gj
noremap k gk
noremap gj j
noremap gk k
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" ファイルエンコーディング
set encoding=utf-8
set fileencoding=utf-8
" バックスペースを直感的に
set backspace=indent,eol,start
" 検索ハイライト
set hlsearch
" esc連打でハイライト消す
nmap <Esc><Esc> :nohlsearch<CR><Esc>
syntax on
" 新しい行のインデントを現在行と同じにする
set autoindent
" インクリメンタルサーチを行う
set incsearch
" 行番号を表示する
set nonumber
" ファイル名を表示
set title
" タブ入力を空白に置き換える
set expandtab
" タブ幅を4に設定
set tabstop=4
" タブを挿入するときの幅を4に設定
set shiftwidth=4
" 検索時に大文字が含まれていれば、大文字小文字を区別する
set smartcase
" 高度な自動インデント
set smartindent

