set encoding=utf-8
scriptencoding utf-8

set nocompatible
syntax on

" Load plugins via pathogen
let g:pathogen_disabled = []
execute pathogen#infect()

filetype plugin indent on

set visualbell
set incsearch
set ignorecase
set smartcase
set smarttab
set autoindent
set backspace=indent,eol,start
set complete-=i
set nrformats-=octal
set ttimeout
set ttimeoutlen=100
set ruler
set wildmenu

set showmatch       " jump to matching brackets shortly
set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab

set formatoptions+=j  " delete comment character when joining commented lines
set display+=lastline

set history=1000

set scrolloff=6		" keep offset from the cursor to the window margins when scrolling
set sidescrolloff=2

"set selection=exclusive
"set nostartofline

set linebreak		" wrap lines at word boundaries

set wildmode=longest,list   " tab completion behavior
set winaltkeys=no

set hidden
set autoread
set sessionoptions-=options

set keywordprg=     " call vim help instead of man on K

if has("gui_running")
    colorscheme twilight " gruvbox codeschool wombat
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12,Bitstream\ Vera\ Sans\ Mono\ 12
    set guioptions-=m	" disable menu bar
    set guioptions-=T	" disable toolbar
    set guioptions-=e   " disable GUI tabline
    set guitablabel=%t  " show filename without path in tab label
    let g:airline_powerline_fonts = 1
else
    if &t_Co == 256
        colorscheme xoria256
    else
        colorscheme default
    end
end

" always show a status line for the last window
set laststatus=2

set listchars=tab:>-

" make Y yank until the end of the line
map Y y$

function! PrevBufOrTab()
    if tabpagenr('$') == 1  " only one tab?
        bprev
    else
        tabprev
    endif
endfunction
function! NextBufOrTab()
    if tabpagenr('$') == 1  " only one tab?
        bnext
    else
        tabnext
    endif
endfunction

" more convenient tab switching
nnoremap <silent> <C-H> :call PrevBufOrTab()<CR>
nnoremap <silent> <C-L> :call NextBufOrTab()<CR>

" toggle between header and source file (uses a.vim)
nnoremap gA :A<CR>

" no ] key on German keyboard, use ü for jumping to tags
nnoremap ü <C-]>

" map Escape to :ccl (close quickfix) in quickfix buffers.
autocmd FileType qf nmap <buffer> <Esc> :ccl<CR>

set wildignore=*.o,*.a,*.obj,*.exe

command Config tabe $MYVIMRC

""""""""""""""""""" TeX stuff """""""""""""""""""""

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'  " to invoke bibtex etc

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" don't jump to error window
let g:Tex_GotoError=0

augroup MyIMAPs
    au!
    au VimEnter * call IMAP('FRAME', "\\begin{frame}\n\\frametitle{<++>}\n\n<++>\n\\end{frame}", 'tex')
augroup END

nmap <F2> :w<CR>\ll

" make \ a keyword character for TeX editing
autocmd FileType tex setlocal iskeyword+=92

"""""""""""""""""""""""""""""""""""""""""""""""""""

" emacs compatibility for indenting C code
function! GnuIndentSpaces()
    setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
    setlocal shiftwidth=2
    setlocal smarttab
    setlocal tabstop=8
    setlocal expandtab
endfunction

"au FileType c,cpp call GnuIndentSpaces()

let g:airline#extensions#tabline#enabled = 1        " use smart buffer/tab line
let g:airline#extensions#tabline#fnamemod = ':t'    " only filename without path in tabline

let g:ctrlp_root_markers = ['.projectroot']
