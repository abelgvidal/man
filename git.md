
Revert commit
----------------

>git commit -m "Something terribly misguided"             
>git reset --soft HEAD~                                   
><< edit files as necessary >>                              
>git add ...                                              
>git commit -c ORIG_HEAD  
