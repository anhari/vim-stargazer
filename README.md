# stargazer.vim

Fuzzy find and navigate to your starred repositories, straight outta vim.

<img src="https://github.com/anhari/vim-stargazer/blob/master/vim-stargazer.gif?raw=true" width="500">

## Installation

Stargazer utilizes the [Octokit] gem to pull down your starred repositories, and
utilizes [fzf] to fuzzy find those starred repositories. You'll need to [install
fzf] and install Octokit via:

```
gem install octokit
```

Then, install the required vim plugins using vim-plug:

``` vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'anhari/vim-stargazer'
```

[fzf]: https://github.com/junegunn/fzf
[install fzf]: https://github.com/junegunn/fzf#installation
[Octokit]: https://github.com/octokit/octokit.rb
[vim-plug]: https://github.com/junegunn/vim-plug


## Usage

This plugin has three commands:

    :FetchStars <github_username>
    :Stargaze
    :OpenRepository <github_username>/<repository_name>

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

Fuzzy find a repository from your list of starred repositories, created via the
`FetchStars` method.


### OpenRepository

    :OpenRepository <github_username>/<repository_name>

Open a specific repository, i.e.: `:OpenRepository anhari/vim-stargazer`

## Navigate directly to README sections

You also have the option to navigate directly to a repository's README by
setting the following global vim variable:

`let g:StargazerNavigateToREADME = 1`

<img src="https://github.com/anhari/vim-stargazer/blob/master/vim-stargazer-readme.gif?raw=true" width="500">
