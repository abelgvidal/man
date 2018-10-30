
Revert commit
----------------

>git commit -m "Something terribly misguided"             
>git reset --soft HEAD~                                   
><< edit files as necessary >>                              
>git add ...                                              
>git commit -c ORIG_HEAD  

Magic time machine!
--------------

>git reflog
>git reset HEAD@{index}

Diff also stuff staged
----------------

>git diff --staged
