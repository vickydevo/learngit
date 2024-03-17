Date: 18/03/2024  Monday
Batch: PSCMR
Class DEVOPS  [morning]  : 11am - 1:00pm
-------------------------------------------

ssh-coonectivity 
----------------
ssh-keygen   -->  private and public key are created in pc/ec2 
            --> put id_rsa.pub [public] in github settings--> ssh-keys 
            --> then copy git cli url for specific repo 
git revert:
-----------

Purpose: git revert is used to [create a new commit] that undoes the changes introduced by a previous commit. 
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


git stash :
----------
    It is used to temporarily store changes that are not yet ready to be committed. 
    This is particularly useful when you need to switch to another branch or work on a different task 
    without committing your current changes.
    The git stash command creates a stash—a stack of changes that you can reapply later.


        Today I am going to working on Dockerfile
        middle of writing docker file 
        you got production support work -->  high priority
        you may not commit this changes
    1.To stash your current changes, run:
                    git stash  
    2.You can view a list of stashed changes by running:
            git stash list
        "WIP" typically stands for "Work In Progress
    3.To apply the most recent stash (i.e., the top of the stash stack), run:
            git stash apply
        This will reapply the stashed changes to your working directory without removing them from the stash.
    4.If you have multiple stashes and want to apply a specific one
            git stash apply stash@{1}
    5.To apply the most recent stash and remove it from the stash stack, run:
             git stash pop
        This is equivalent to running git stash apply followed by git stash drop
    6. To remove a specific stash from the stack without applying its changes, run:
            git stash drop stash@{1}

    7.To remove all stashed changes from the stack, run:\
            git stash clear

#  pull request:
#  -------------
     It allows developers to propose changes to a repository and request that someone else review 
     and merge those changes into the main codebase. 
     Pull requests are commonly used in collaborative development workflows to facilitate code review, 
     feedback, and collaboration among team members.

