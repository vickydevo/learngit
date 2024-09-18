1. what are the types of stages in git?
2. Difference between merge and rebase?
3. difference between merge and cherry-pick?
4. what is the difference between fetch and pull?
---------------------------------------------------------------

# Delete branches
# Delete a Local Branch:
  To delete a local branch that is fully merged into your current branch:
		git branch -d branch_name
#  If the branch is not fully merged, you ll need to use the -D option (capital D) to force delete:
      git branch -D branch_name

# Delete a Remote Branch:
# To delete a remote branch, use the following command:
    git push origin --delete branch_name
# Prune Remote-tracking Branches:
# To remove remote-tracking references that no longer exist on the remote:
        git fetch -p


		
Developers   -->  always they do some changes  -->  try to move this branch to production	
   -->  Developers might do some changes
   -->  production will fail
merge   	-->  3 commits (test123)  --> 	master


	


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
