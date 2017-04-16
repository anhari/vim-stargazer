function! s:InitVariable(var, value)
  if !exists(a:var)
    let escaped_value = substitute(a:value, "'", "''", "g")
    exec 'let ' . a:var . ' = ' . "'" . escaped_value . "'"
    return 1
  endif
  return 0
endfunction

function! s:InitializeVariables()
  call s:InitVariable("g:StargazerNavigateToREADME", 0)
endfunction

function! FetchStars(github_username)
  echo 'Fetching your starred repositories...'
  execute 'silent !ruby ~/.vim/bundle/vim-stargazer/lib/fetch_star_list.rb ' . a:github_username

  if !empty(glob("~/.starred_repositories"))
    echo 'Fetching of your starred repositores is complete!'
  else
    echo 'Fetch unsuccessful.'
  endif
endfunction

function! OpenRepository(github_user_and_repository)
  if g:StargazerNavigateToREADME
    execute 'silent !open https:\/\/github.com\/' . a:github_user_and_repository . '\#readme'
  else
    execute 'silent !open https:\/\/github.com\/' . a:github_user_and_repository
  endif
endfunction

function! Stargaze()
  if !empty(glob("~/.starred_repositories"))
    call fzf#run({
          \ 'source': 'grep --line-buffered --color=never -hsi --include=.starred_repositories "" * ~/.starred_repositories',
          \ 'down':   '40%',
          \ 'sink':   function('OpenRepository')})
  else
    echo "Run the FetchStars <github_username> command to populate your stars!"
  endif

endfunction

command! -nargs=1 OpenRepository call OpenRepository(<f-args>)
command! -nargs=1 FetchStars call FetchStars(<f-args>)
command! -nargs=0 Stargaze call Stargaze(<f-args>)

call s:InitializeVariables()
