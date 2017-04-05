" Must pass the repo as a string, i.e. 'anhari/vim-readme'
function! ReadMe(...)
  execute 'silent !open https:\/\/github.com\/' . join(a:000, '') . '\/blob\/master\/README.md'
endfunction

command! README call ReadMe(<f-args>)
