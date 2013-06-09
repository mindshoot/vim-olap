" Oracle OLAP DML
" Language:    Oracle OLAP DML
" Maintainer:  Damien Zhang <zhang DOT damien AT gmail DOT com>
" URL:         http://github.com/damienzhang/vim-olap

if exists("b:current_syntax")
  finish
endif

" Allow NERD Commenter to set comments
set commentstring="\"%s"

set iskeyword=@,48-57,_,.,192-255

syn case ignore
syn keyword pcxStatement        define
syn keyword pcxStatement        limit to keep remove
syn keyword pcxStatement        pushlevel poplevel push pop
syn keyword pcxStatement        argument variable
syn keyword pcxStatement        maintain add delete

"syn keyword pcxType             integer text short boolean
"syn keyword pcxType             temp

syn match pcxType "\v((variable|argument)\s+\S+\s+)@<=\S+"

syn keyword pcxDo               do doend

syn keyword pcxConditional      if then else

syn keyword pcxOperator         =
syn keyword pcxOperator         lt gt le ge eq ne not


syn keyword pcxFunction    ABS ADD_MONTHS AGGCOUNT AGGMAPINFO AGGREGATE AGGREGATION AGGROPS ALLOCOPS
syn keyword pcxFunction    ANTILOG ANTILOG10 ANY ARCCOS ARCSIN ARCTAN ARCTAN2 ARG ARGCOUNT ARGFR
syn keyword pcxFunction    ARGS ASCII AVERAGE AW BACK BASEDIM BASEVAL BEGINDATE BIN_TO_NUM BITAND
syn keyword pcxFunction    BLANKSTRIP CALLTYPE CHARTOROWID CATEGORIZE CEIL CHANGEBYTES CHANGECHARS
syn keyword pcxFunction    CHANGEDRELATIONS CHANGEDVALUES CHARLIST CHGDIMS CHR COALESCE COLVAL
syn keyword pcxFunction    CONTEXT CONVERT CORRELATION COS COSH COUNT CUMSUM CURRENT_DATE CURRENT_TIMESTAMP
syn keyword pcxFunction    DAYOF DBTIMEZONE DDOF DECODE DEPRDECL DEPRDECLSW DEPRSL DEPRSOYD
syn keyword pcxFunction    ENDDATE ENDOF EVERY EXISTS EXP EVERSION EXTBYTES EXTCHARS EXTCOLS EXTLINES
syn keyword pcxFunction    EXTRACT FCOPEN FCQUERY FILEERROR FILEGET FILENEXT FILEOPEN FILEQUERY
syn keyword pcxFunction    FILTERLINES FINDBYTES FINDCHARS FINDLINES FINTSCHED FLOOR FPMTSCHED
syn keyword pcxFunction    FROM_TZ GET GREATEST GROUPINGID GROWRATE HIERCHECK HIERHEIGHT INFO
syn keyword pcxFunction    INITCAP INLIST INSBYTES INSCHARS INSCOLS INSLINES INSTAT
syn keyword pcxFunction    INSTR INTPART IRR ISDATE ISEMPTY ISSESSION ISVALUE JOINBYTES
syn keyword pcxFunction    JOINCHARS JOINCOLS JOINLINES KEY LAG LAGABSPCT LAGDIF LAGPCT
syn keyword pcxFunction    LARGEST LAST_DAY LEAD LEAST LIMITMAPINFO LNNVL LOCALTIMESTAMP
syn keyword pcxFunction    LOG LOG10 LOWCASE LPAD LTRIM MAKEDATE MAX MAXBYTES
syn keyword pcxFunction    MAXCHARS MEDIAN MIN MMOF MODE MODULO MONTHS_BETWEEN MOVINGAVERAGE
syn keyword pcxFunction    MOVINGMAX MOVINGMIN MOVINGTOTAL NA2 NAFILL NAFLAG NEW_TIME NEXT_DAY
syn keyword pcxFunction    NLSSORT NONE NORMAL NPV NULLIF NUMBYTES NUMCHARS NUMLINES
syn keyword pcxFunction    NUMTODSINTERVAL NUMTOYMINTERVAL NVL NVL2 OBJ OBJLIST OBSCURE
syn keyword pcxFunction    PARTITION PARTITIONCHECK PERCENTAGE QUAL RANDOM RANK
syn keyword pcxFunction    RECNO REM REMAINDER REMBYTES REMCHARS REMCOLS REMLINES REPLBYTES
syn keyword pcxFunction    REPLCHARS REPLCOLS REPLLINES RESERVED ROUND ROW ROWIDTOCHAR ROWIDTONCHAR
syn keyword pcxFunction    RPAD RTRIM RUNTOTAL SESSIONTIMEZONE SIGN SIN SINH
syn keyword pcxFunction    SMALLEST SMOOTH SORT SORTLINES SQLFETCH SQRT STARTOF STATALL
syn keyword pcxFunction    STATDEPTH STATEQUAL STATFIRST STATLAST STATLEN STATLIST STATMAX STATMIN
syn keyword pcxFunction    STATRANK STATVAL STDDEV SUBSTR s SUBTOTAL SYS_CONTEXT SYSDATE SYSINFO
syn keyword pcxFunction    SYSTEM SYSTIMESTAMP TALLY TAN TANH TCONVERT TEXTFILL
syn keyword pcxFunction    TO_CHAR TO_DATE TO_DSINTERVAL TO_NCHAR TO_NUMBER TO_TIMESTAMP TO_TIMESTAMP_TZ TO_YMINTERVAL
syn keyword pcxFunction    TOD TODAY TOTAL TRANSLATE TRIGGER TRIM TRUNCATE TZ_OFFSET
syn keyword pcxFunction    UNIQUELINES UNRAVEL UPCASE VALSPERPAGE VALUES VINTSCHED
syn keyword pcxFunction    VPMTSCHED WEEKOF WIDTH_BUCKET WKSDATA WRITABLE YYOF

syn keyword pcxStatement        regress call report show
syn keyword pcxRepeat           while for

syn match  pcxComment   "\".*"

syn match  pcxLineSkip  "-$"

syn region  pcxString   start=+'+  skip=+\\\\\|\\'+  end=+'+

syn match  pcxNumber    display "[+-]\=\<\d\+\>"
syn match  pcxFloat     display "[+-]\=\<\d\+\.\d+\>"
syn match  pcxFloat     display "[+-]\=\<.\d+\>"
syn match  pcxFloat     display "\<\d\+\.\d*\(e[-+]\=\d\+\)\=\>"
syn match  pcxFloat     display "\.\d\+\(e[-+]\=\d\+\)\=\>"
syn match  pcxFloat     display "\<\d\+e[-+]\=\d\+\>"

syn keyword pcxValue    NA ALL

" Highlighting
hi def link pcxDoRegion String

hi def link pcxStatement        Statement
hi def link pcxConditional      Conditional
hi def link pcxFunction         Function
hi def link pcxCommand          Function
hi def link pcxRepeat           Repeat
hi def link pcxComment          Comment
hi def link pcxOperator         Operator
hi def link pcxLineSkip         Special
hi def link pcxDo               Statement
hi def link pcxType             Type
hi def link pcxString           String
hi def link pcxDeclaration      String
hi def link pcxNumber           Number
hi def link pcxValue            Number
hi def link pcxFloat            Float

