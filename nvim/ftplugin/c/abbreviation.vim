" ------------------
"  including stuff
" ------------------
iab incstdlib #include <stdlib.h>
iab incstdio #include <stdio.h>
iab incstring #include <string.h>
iab inclimits #include <limits.h>
iab incmath #include <math.h>

" ----------------
"  integer types
" ----------------
iab ihi short
iab ihu unsigned short
iab ild long
iab ilu unsigned long
iab illd long long
iab illu unsigned long long

" --------------
"  declarations
" --------------
iab dc int compare(const void * a, const void * b);
iab drc char * readline();
iab drhu unsigned short readline_hu();
iab drhi short readline_hi();
iab drlu unsigned long readline_lu();
iab drld long readline_ld();
iab drllu unsigned long long readline_llu();
iab drlld long long readline_lld();

" ----------
"  comments
" ----------
iab commsolve -----===== Solve =====-----
