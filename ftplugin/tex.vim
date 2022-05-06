setlocal spell

" set colorcolumn=124
" set textwidth=123

" let &lines=33
" let &columns=124
" TagbarToggle


" mappings (in addition to LaTeX-Box)
let maplocalleader = ","

" inoremap <buffer> <LocalLeader>v \vec 
" inoremap <buffer> <LocalLeader>a \alpha
" inoremap <buffer> <LocalLeader>b \beta
" inoremap <buffer> <LocalLeader>g \gamma
" inoremap <buffer> <LocalLeader>d \delta
" inoremap <buffer> <LocalLeader>D \Delta
" inoremap <buffer> <LocalLeader>m \mu
" inoremap <buffer> <LocalLeader>n \nu
" inoremap <buffer> <LocalLeader>p \pi
" inoremap <buffer> <LocalLeader>P \phi
" inoremap <buffer> <LocalLeader>r \rho
" inoremap <buffer> <LocalLeader>o \omega
" inoremap <buffer> <LocalLeader>t \tau
" inoremap <buffer> <LocalLeader>i \int
" inoremap <buffer> <LocalLeader>s \sigma
" inoremap <buffer> <LocalLeader>< \langle
" inoremap <buffer> <LocalLeader>> \rangle


" Smart quotes (from auctex)
function! s:TexQuotes()
    let insert = "''"
    let left = getline('.')[col('.')-2]
    if left =~ '^\(\|(\|{\|[\|\s\)$'
        let insert = '``'
    elseif left == '\'
        let insert = '"'
    endif
    return insert
endfunction
inoremap <buffer> " <C-R>=<SID>TexQuotes()<CR>
