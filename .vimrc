nmap <F8> :TagbarToggle<CR> 
nmap <F9> :!make<CR> 
colorscheme ron
set number
set colorcolumn=80
set modeline
set textwidth=80
set omnifunc=syntaxcomplete#Complete
" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
" function! AppendModeline()
" let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
" \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
" let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
" call append(line("$"), l:modeline)
" endfunction
" nnoremap <silent> <Leader>ml :call AppendModeline()<CR>
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\~$', '__pycache__']
set nrformats=

filetype plugin indent on
syntax on

let g:pymode_python = 'python3'
let g:pymode_options_max_line_length = 120

function! SetAltPrefs()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    set expandtab
endfunction

autocmd FileType python set omnifunc=python3complete#Complete
