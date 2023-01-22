function CompilePdf()
    let l:pdf_path = expand("%:p:r")
    let l:dot_file = expand("%:p")
    let l:cmd = "!dot -Tpdf " .. l:dot_file .." -o " .. l:pdf_path .. ".pdf"
    call execute(l:cmd, "silent")
endfunction

augroup CustomDotAugroup
    autocmd!
    autocmd BufWritePost *.dot :call CompilePdf()
augroup END
