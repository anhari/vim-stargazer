# README.vim

Navigate to repository READMEs straight outta vim.

![vim-readme opening readmes](./vim-readme.gif =250x)

## Dependencies

* [fzf](https://github.com/junegunn/fzf)
* [octokit](https://github.com/octokit/octokit.rb)

## Usage

This plugin has three commands:

    :FetchStars <username>
    :FindREADME
    :OpenREADME <username>/<reponame>

The heart of this plugin lies in the `:FindREADME` command, which will allow you
to fuzzy find (using fzf) a repository you have starred on GitHub and navigate
to its README on selection. Before using this command, you'll have to populate
these stars using the `:FetchStars` command.

### FetchStars

    :FetchStars <github_username>

This will fetch a list of your starred repositories and create a file in the
root of this vim plugin named `starred_repositories.txt`.

### FindREADME

    :FindREADME

Fuzzy find a README your list of starred repositories, created via the
`FetchStars` method.


### OpenREADME

    :OpenREADME <username>/<repository_name>

Open a specific repository's readme, i.e.: `:OpenREADME anhari/vim-readme`
