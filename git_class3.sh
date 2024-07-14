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
# Git can handle most merges on its own with automatic merging features.
		A conflict arises when two separate branches have made edits to the same line in a file, 
		or when a file has been deleted in one branch but edited in the other.
		Conflicts will most likely happen when working in a team environmen


4. what is meant by conflicts and how to resolve?
	we can do manually / using by 3rd party tools (tortoise git)/VSCODE
	
git fetch 
then git merge/rebase

git pull 






