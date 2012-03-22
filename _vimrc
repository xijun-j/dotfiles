"------------------------------------
" vundle settings
"------------------------------------
set nocompatible
filetype off
set rtp+=~/dotfiles/neobundle.git/
if has('vim_starting')
    set runtimepath+=~/dotfiles/neobundle.vim
    call neobundle#rc(expand('~/.vim/'))
endif

NeoBundle 'molokai'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'http://github.com/Shougo/neocomplcache-snippets-complete'
NeoBundle 'http://github.com/Shougo/vimfiler.git'
NeoBundle 'http://github.com/ujihisa/neco-look.git'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-ref'
" trying this
NeoBundle "YankRing.vim"
let g:yankring_manual_clipboard_check = 0
let g:yankring_max_history = 30
let g:yankring_max_display = 70
" Yankの履歴参照
nmap ,y ;YRShow<CR>

NeoBundle "http://github.com/thinca/vim-quickrun.git"
NeoBundle "http://github.com/thinca/vim-poslist.git"
NeoBundle "http://github.com/mattn/gist-vim.git"
NeoBundle "http://github.com/rstacruz/sparkup.git", {'rtp': 'vim/'}
NeoBundle "https://github.com/mattn/zencoding-vim.git"
let g:user_zen_settings = { 'indentation' : '    ', }

" Programming
NeoBundle "jQuery"
NeoBundle "rails.vim"
NeoBundle "http://github.com/hotchpotch/perldoc-vim"
NeoBundle "http://github.com/c9s/perlomni.vim"
NeoBundle "http://github.com/mattn/perlvalidate-vim.git"

" Snippets
NeoBundle "http://github.com/gmarik/snipmate.vim.git"

" Syntax highlight
NeoBundle "cucumber.zip"
NeoBundle "Markdown"

" Git integration
NeoBundle "git.zip"
NeoBundle "fugitive.vim"

" (HT|X)ml tool
NeoBundle "ragtag.vim"

" Utility
NeoBundle "repeat.vim"
NeoBundle "surround.vim"
NeoBundle "SuperTab"
NeoBundle "file-line"
NeoBundle "Align"

" FuzzyFinder
NeoBundle "L9"
NeoBundle "FuzzyFinder"
let g:fuf_modesDisable = [] " {{{
nnoremap <silent> <LocalLeader>h :FufHelp<CR>
nnoremap <silent> <LocalLeader>2  :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <LocalLeader>@  :FufFile<CR>
nnoremap <silent> <LocalLeader>3  :FufBuffer<CR>
nnoremap <silent> <LocalLeader>4  :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <LocalLeader>$  :FufDir<CR>
nnoremap <silent> <LocalLeader>5  :FufChangeList<CR>
nnoremap <silent> <LocalLeader>6  :FufMruFile<CR>
nnoremap <silent> <LocalLeader>7  :FufLine<CR>
nnoremap <silent> <LocalLeader>8  :FufBookmark<CR>
nnoremap <silent> <LocalLeader>*  :FuzzyFinderAddBookmark<CR><CR>
nnoremap <silent> <LocalLeader>9  :FufTaggedFile<CR>
" " }}}

" Zoomwin
NeoBundle "ZoomWin"
noremap <LocalLeader>o :ZoomWin<CR>
vnoremap <LocalLeader>o <C-C>:ZoomWin<CR>
inoremap <LocalLeader>o <C-O>:ZoomWin<CR>
noremap <C-W>+o :ZoomWin<CR>

" Ack
NeoBundle "ack.vim"
noremap <LocalLeader># "ayiw:Ack <C-r>a<CR>
vnoremap <LocalLeader># "ay:Ack <C-r>a<CR>

filetype plugin indent on
syntax on
set fileencodings=ucs-bom,utf-8,iso-2022-jp,sjis,cp932,euc-jp,cp20932
set fileencodings=utf-8
set encoding=utf-8
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set hlsearch
set number
set cmdheight=2
set mouse=a
set list
set listchars=tab:»-,trail:-,nbsp:%
set t_Co=256
" set statusline=%=%{g:HahHah()}
"colorscheme desert256
colorscheme molokai
let g:molokai_original = 1
set ttymouse=xterm2
" nmap <ESC><ESC> :nohl<CR><ESC>
noremap ; :
noremap : ;
au BufNewFile,BufRead *.psgi set filetype=perl
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.pde set filetype=processing
au BufNewFile,BufRead *.erb set filetype=html

"-------------------------------------------------------------- set ONUNUME
" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/    /ge

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" 0, 9で行頭、行末へ
"nmap 1 ^
"nmap 0 $

" insert mode での移動
imap  <C-e> <END>
imap  <C-a> <HOME>

" インサートモードでもhjklで移動（Ctrl押すけどね）
"imap <C-j> <Down>
"imap <C-k> <Up>
"imap <C-h> <Left>
"imap <C-l> <Right>

" コンマの後に自動的にスペースを挿入
inoremap , ,<Space>

" Perlと同じ拡張正規表現を使うようにする
nnoremap / /\v

""" neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1

" AutoComplPop like behavior.
" let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
" set completeopt+=longest
" let g:neocomplcache_enable_auto_select = 1
" let g:neocomplcache_disable_auto_complete = 1
" inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
