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

Open up GitHub README pages in your browser from vim

==============================================================================
USAGE (2)                                                           *Usage*

Open a README for a specified repository by executing the following in vim.

This repository only has two commands as of right now:

:FetchStars <username>
:README <username>/<reponame>

--------------------------------------------------------------------------------
2.1  FetchStars~                                                    *FetchStars*

This will fetch a list of your starred repositories and create a file in the
root of this vim plugin named starred_repostories.txt.

--------------------------------------------------------------------------------

2.2  FindREADME~                                                    *OpenREADME*

Open a README of your starred repositories:

:FindREADME

Fuzzy find a README your list of starred repositories, created via the
*FetchStars* method.

--------------------------------------------------------------------------------

2.3  OpenREADME~                                                    *OpenREADME*

Open a specific repository's readme, i.e.:

:README anhari/vim-readme

--------------------------------------------------------------------------------
