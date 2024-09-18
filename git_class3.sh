Date: 14/03/2024  THRUSDAY
Batch: JSD, DEVOPS2, DEVOPS3
Class DEVOPS  [morning]  : 9:30am - 11:00am
--------------------------------------------

# merge and rebase:
# -----------------
# Both are used for moving changes from one branch to other branch

# merge: it will create extra commit for us 
1.Merge with "ort" strategy: The "ort" (Ostensibly Recursive Traversal) 
	merge strategy is a recursive strategy that attempts to identify the best common ancestor 
	between the branches being merged and creates a new merge commit that combines the changes from both branches.
 	This strategy is used when a simple fast-forward merge is not possible due to divergent changes on the branches.

2.fast forword strategy
	"Fast-forward" is a term used in Git to describe a simple merge scenario where the branch being merged has all commits
	 that are reachable from the current branch. In this case, 
	 Git can directly move the pointer of the current branch forward to the tip of the other branch, 
	incorporating all the commits in a linear history.

		git merge <branch-name>

# Rebase: it won't create any extra commit	
		git rebase <branch-name>

i didnt find any difference in git merge and git rebase when i tried first merge and then rebase extra commit is not fount 
the commit that made in first hotfix master and after using merge cmd in master is same

this is because there no new changes in the master after creating new branch 

impact on Collaboration:
------------------------------------
	Merging is safe for shared branches as it preserves history.
	Rebasing rewrites history, so it should be used cautiously with branches shared with others to avoid complications.
-------------------------------------------------
5.what is meant by conflicts and how to resolve?
	we can do manually / using by 3rd party tools (tortoise git)/VSCODE
  # Git can handle most merges on its own with automatic merging features.
	A conflict arises when two separate branches have made edits to the same line in a file, 
	or when a file has been deleted in one branch but edited in the other.
	Conflicts will most likely happen when working in a team environmen

# git cherry-pick is a powerful command that enables arbitrary Git commits to be picked by reference and appended to the current working HEAD.
Cherry picking is the act of picking a commit from a branch and applying it to another.
git cherry-pick can be useful for undoing changes.
 
cherry pick	-->   pick specific commit and it will merge in ur desired branch
	  make commits in one branch
	  move to ur desired branch  -- git checkout branch  and select the commit id u want merge

       git cherry-pick 272c6130719dee4586046dce68014818246feef2

# Some deployment heappened in production later developers written some code 
(updated their code based on new requirement)
    we are going to do hotfixs   -->  we can do with cherry-pick

        1.0.0   -->  1.0.1
 
1. Git Fetch:
What it does: Downloads the latest commits, files, and updates from the remote repository to your local repository's tracking branches (e.g., origin/main), but does not merge these changes into your current working branch.

Usage: It allows you to see what changes have been made remotely without affecting your working directory. This is useful if you want to review changes before integrating them.

Command:

	git fetch
Scenario: You fetch updates from the remote repository but still need to manually merge or rebase the changes into your local branch.

2. Git Pull:
What it does: Combines fetch and a subsequent merge (or rebase) in one step. It downloads the changes from the remote repository and immediately attempts to integrate them into your current branch.

Usage: It automatically updates your working directory with the changes from the remote repository.

Command:

		git pull
Scenario: You want to get the latest changes from the remote repository and apply them to your current branch immediately.

Key Difference:
fetch only downloads the data but does not affect your working directory or branches.
pull downloads and automatically merges the changes into your current working branch.
Recommended Workflow:
Safe Approach: Use fetch first to review changes and then manually merge them.
Quick Approach: Use pull when you are confident and want to update your branch in one step.





