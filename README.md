# stargazer.vim

Fuzzy find and navigate to repository READMEs for your starred repositories,
straight outta vim.

<img src="https://github.com/anhari/vim-stargazer/blob/master/vim-stargazer.gif?raw=true" width="500">

## Dependencies

* [fzf](https://github.com/junegunn/fzf)
* [octokit](https://github.com/octokit/octokit.rb)

## Usage

This plugin has three commands:

    :FetchStars <username>
    :Stargaze
    :OpenREADME <username>/<reponame>

The heart of this plugin lies in the `:Stargaze` command, which will allow you
to fuzzy find (using fzf) a repository you have starred on GitHub and navigate
to its README on selection. Before using this command, you'll have to populate
these stars using the `:FetchStars` command.

### FetchStars

    :FetchStars <github_username>

This will fetch and store a list of your starred repositories in
`~/.starred_repositories`.


### Stargaze

    :Stargaze

Fuzzy find a README your list of starred repositories, created via the
`FetchStars` method.


### OpenREADME

    :OpenREADME <username>/<repository_name>

Open a specific repository's readme, i.e.: `:OpenREADME anhari/vim-stargazer`
