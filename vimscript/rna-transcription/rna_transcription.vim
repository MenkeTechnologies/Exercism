function! ToRna(strand) abort
    if a:strand !~# '^[GCTA]\+$'
        return ''
    else
        return tr(a:strand, 'GCTA', 'CGAU')
    endif
endfunction
