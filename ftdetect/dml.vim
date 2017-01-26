" Vim filetype detection
" Language:    Oracle OLAP DML
" Maintainer:  Damien Zhang <zhang DOT damien AT gmail DOT com>
" URL:         http://github.com/damienzhang/vim-olap

augroup dmldetect
    au! BufRead,BufNewFile *.dml,*.EPR,*.epr setfiletype dml
augroup END
