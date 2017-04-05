function! ReadMe(...)
  execute 'silent !open https:\/\/github.com\/' . join(a:1, '') . join(a:2, '\/') '\/blob\/master\/README.md'
endfunction

command! README call ReadMe(<f-args)
