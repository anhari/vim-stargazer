function! ReadMe(...)
  execute 'silent !open https:\/\/github.com\/' . join(a:000, ' ') . '\/blob\/master\/README.md'
endfunction

command! README call ReadMe(<f-args)
