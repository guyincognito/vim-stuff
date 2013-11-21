source /usr/share/vim/vim73/vimrc_example.vim
set ls=2
set nu
set expandtab
set ts=4
set sw=4
set t_Co=256

function! Diff(orig, new_, orig_name, new_name)
    return system(
        \ "A='" . join(getbufline(a:orig, 1, '$'), '\n') . "'; " .
        \ "B='" . join(getbufline(a:new_, 1, '$'), '\n') . "'; " .
        \ "diff -u " .
        \ "--label a/" . a:orig_name . " --label b/" . a:new_name . " " .
        \ "<(echo -e $A) <(echo -e $B)")
endfunction
