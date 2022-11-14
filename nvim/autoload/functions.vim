function functions#VimtexInMathZone()
 return match(map(synstack(line('.'), max([col('.') - 1, 1])), 'synIDattr(v:val, ''name'')'), '^texMath\%(Zone\|Region\)') >= 0
endfunction
