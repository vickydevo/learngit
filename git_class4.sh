1. what are the types of stages in git?
2. Difference between merge and rebase?
3. difference between merge and cherry-pick?
5. what is the difference between fetch and pull?
# Git can handle most merges on its own with automatic merging features.
		A conflict arises when two separate branches have made edits to the same line in a file, 
		or when a file has been deleted in one branch but edited in the other.
		Conflicts will most likely happen when working in a team environmen


4. what is meant by conflicts and how to resolve?
	we can do manually / using by 3rd party tools (tortoise git)/VSCODE
	

# Some deployment heappened in production later developers written some code (updated their code based on new requirement)
    we are going to do hotfixs   -->  we can do with cherry-pick

        1.0.0   -->  1.0.1
# git cherry-pick is a powerful command that enables arbitrary Git commits to be picked by reference and appended to the current working HEAD.
		Cherry picking is the act of picking a commit from a branch and applying it to another.
		git cherry-pick can be useful for undoing changes.

		
developers   -->  always they do some changes  -->  try to move this branch to production	
											   -->  Developers might do some changes
											   -->  production will fail


merge   	-->  3 commits (test123)  --> 	master
cherry pick	-->   pick specific commit

git cherry-pick 272c6130719dee4586046dce68014818246feef2


pull = fetch + rebase
	

