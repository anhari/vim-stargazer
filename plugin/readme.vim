" Must pass the repo as a string, i.e. 'anhari/vim-readme'
function! ReadMe(user_and_repo)
  execute 'silent !open https:\/\/github.com\/' . a:user_and_repo . '\/blob\/master\/README.md'
endfunction

command! -nargs=1 README call ReadMe(<f-args>)
