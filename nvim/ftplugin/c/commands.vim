function SortFunctionNames()
    " set all functions to one line
    :%g/\s\w\+(/,/^}/ s/$\n/@@@/g

    " sort the names
    :%sort r /\s\w+(/
    
    " 'unfold' the function
    :%s/@@@/\r/g

    echo 'Finished!'
endfunction

command! SortFunctionNames call SortFunctionNames()
