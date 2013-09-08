source /usr/share/vim/vim73/vimrc_example.vim
set ls=2
set nu
set expandtab
set ts=4
set sw=4
set t_Co=256

function! Diff(orig, new_, orig_name, new_name)
    return system(
        \ "diff -u " .
        \ "--label a/" . a:orig_name . " " .
        \ "--label b/" . a:new_name . " " .
        \     "<(cat <<EOF\n" .
        \         join(getbufline(a:orig, 1, "$"), "\n") .
        \     "\nEOF\n) " .
        \     "<(cat <<EOF\n" .
        \         join(getbufline(a:new_, 1, "$"), "\n") .
        \     "\nEOF\n)")
endfunction
