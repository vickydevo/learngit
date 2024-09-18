Date: 18/09/2024  Monday
Batch: @7
Class DEVOPS  [morning]  : 8am - 2:00pm
-------------------------------------------
ssh-coonectivity 
----------------
ssh-keygen   -->  private and public key are created in pc/ec2 
            --> put id_rsa.pub [public] in github settings--> ssh-keys 
            --> then copy git cli url for specific repo 

#  pull request:
#  -------------
     It allows developers to propose changes to a repository and request that someone else review 
     and merge those changes into the main codebase. 
     Pull requests are commonly used in collaborative development workflows to facilitate code review, 
     feedback, and collaboration among team members.


        click on Pull request --> new pr --> target  source

     add Branch protection rule
     settings sepecific repo --> braches -->aad rule
     
git revert:
-----------
Purpose: git revert is used to [ create a new commit] that undoes the changes introduced by a previous commit. 
    It does this by creating a new commit that applies the "reverse" of the changes made in the specified commit.
    Effects: git revert does not modify existing commits; instead, it creates a new commit with the reverted changes. This preserves the commit history and is safer for collaborative workflows.
        git revert 98bd832 
git reset:
----------
Purpose: git reset is used to move the HEAD pointer to a different commit, 
        effectively resetting the current branch to that commit. 
        It can also be used to unstage changes that have been added to the staging area.
Effects: When you use git reset to move the HEAD pointer to a different commit,
         it effectively "rewrites" history. 
         Commits after the reset point become unreachable and can be lost 
         if there are no other references to them.

        Soft Reset (git reset --soft):
        ---------------------------------
        This type of reset moves the HEAD pointer to a specified commit while keeping 
             the changes from the commits after the reset point staged.
        [It does not change the working directory or the staging area;] 
              it only updates the HEAD pointer.
          Useful when you want to undo the last commit but keep the changes ready to be committed again.
        Example: git reset --soft HEAD~1 moves the HEAD pointer back one commit while keeping the changes staged.
                 git reset --soft 8dee86f
       
        Mixed Reset (git reset --mixed or simply git reset without specifying a mode):
        -------------------------------------------------------------------------------
        This type of reset is the default behavior of git reset.
            It moves the HEAD pointer to a specified commit and unstages the changes 
            from the commits after the reset point.
        [The changes remain in the working directory but are not staged for commit.]
        Useful when you want to undo the last commit and 
            unstage the changes to modify them before committing again.
        
        Example: git reset HEAD~1 moves the HEAD pointer back one commit 
        and unstages the changes.
       
        Hard Reset (git reset --hard):
        -------------------------------
        This type of reset moves the HEAD pointer to a specified commit and 
        discards all changes made after the reset point.
           [ It resets both the staging area and the working directory to match the specified commit.]
             Use with caution as it can result in the [ loss of uncommitted changes ].
        Useful when you want to completely undo the last commit and discard any changes made after it.
        
        Example: git reset --hard HEAD~1 moves the HEAD pointer back one commit and discards all changes.
                    git reset --hard 8dee86f



