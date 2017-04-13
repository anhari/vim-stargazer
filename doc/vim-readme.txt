*vim-readme.txt*

Author:  Michael Anhari

                            vim-readme

==============================================================================
CONTENTS                                                 *vim-readme-contents*

      1. About............................ |About|
      2. Usage ........................... |Usage|
        2.1  ............................... |FetchStars|
        2.2  ............................... |FindREADME|
        2.3  ............................... |OpenREADME|

==============================================================================
ABOUT (1)                                                           *About*

Navigate to repository READMEs, straight outta vim.

For full functionality, this plugin requires fzf[1] and octokit[2].

[1] https://github.com/junegunn/fzf
[2] https://github.com/octokit/octokit.rb

The heart of this plugin lies in the *FindREADME* command, which will allow you
to fuzzy find (using fzf) a repository you have starred on GitHub and navigate
to its README on selection. Before using this command, you'll have to populate
these stars using the *FetchStars* command.

You can also manually navigate to repository using the :OpenREADME command, like
so:

:OpenREADME <username>/<reponame>

==============================================================================
USAGE (2)                                                           *Usage*

This plugin has three commands:

:FetchStars <username>
:FindREADME
:OpenREADME <username>/<reponame>

--------------------------------------------------------------------------------
2.1  FetchStars~                                                    *FetchStars*

This will fetch a list of your starred repositories and create a file in the
root of this vim plugin named starred_repostories.txt.

--------------------------------------------------------------------------------

2.2  FindREADME~                                                    *FindREADME*

Open a README of your starred repositories:

:FindREADME

Fuzzy find a README your list of starred repositories, created via the
*FetchStars* method.

--------------------------------------------------------------------------------

2.3  OpenREADME~                                                    *OpenREADME*

Open a specific repository's readme, i.e.:

:OpenREADME anhari/vim-readme

--------------------------------------------------------------------------------
