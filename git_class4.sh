1. what are the types of stages in git?
2. Difference between merge and rebase?
3. difference between merge and cherry-pick?
4. what is the difference between fetch and pull?
---------------------------------------------------------------
5.what is meant by conflicts and how to resolve?
	we can do manually / using by 3rd party tools (tortoise git)/VSCODE
  # Git can handle most merges on its own with automatic merging features.
	A conflict arises when two separate branches have made edits to the same line in a file, 
	or when a file has been deleted in one branch but edited in the other.
	Conflicts will most likely happen when working in a team environmen
 
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

# Some deployment heappened in production later developers written some code (updated their code based on new requirement)
    we are going to do hotfixs   -->  we can do with cherry-pick

        1.0.0   -->  1.0.1
		
Developers   -->  always they do some changes  -->  try to move this branch to production	
   -->  Developers might do some changes
   -->  production will fail
merge   	-->  3 commits (test123)  --> 	master


git fetch: This command only retrieves the latest changes from the remote repository and stores them in your local repository. 
It doesn't automatically merge these changes into your working branch. Instead, it updates the remote tracking branches (e.g., origin/master) to reflect the latest state of the remote repository.
 After fetching, you can review the changes using tools like git log or git diff and decide whether to merge them into your current branch.

pull = fetch + rebase/merge
	
# git cherry-pick is a powerful command that enables arbitrary Git commits to be picked by reference and appended to the current working HEAD.
Cherry picking is the act of picking a commit from a branch and applying it to another.
git cherry-pick can be useful for undoing changes.
 
cherry pick	-->   pick specific commit and it will merge in ur desired branch
	  make commits in one branch
	  move to ur desired branch  -- git checkout branch  and select the commit id u want merge

       git cherry-pick 272c6130719dee4586046dce68014818246feef2

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
