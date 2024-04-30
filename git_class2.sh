Date: 05/03/2024  Wednesday
Batch: PSCMR
Class DEVOPS  [ morning]  :  
--------------------------
4 STAGES IN THE GIT
-----------------------

work area / untracked	
	git add .
staging area / tracked 
	git commit -m <message>
Local repo
	git push
Remote repo


git log


# check for remote repository push or fetch 
git remote        # output #** origin 
git remote -v  


# make a copy of remote repo in local host
git clone <url>

# Git branch:
-----------
		Different team will be available:
		----------------------------------
			Development team
			Testing team
			Devops team
			
		Development  -->  some working code  (production) 
					-->  New requirement
					-->  we need to do some development
			We should use different branches

# Branching stratergy:
--------------------	
	development branch
	test branch
	devops branch	
	production branch

# Create branch:
--------------
	git branch <branch-name>  --> create new branch
	git branch --> branches available
# push new branch to remote repository
	     git push --set-upstream origin <branch-name>
		 git push -u origin qa   [short version above command]
# Enter into new branch
	git checkout <branch-name>
#  if changes are made in new branch [feature/hotfix] 
#  these commit are not reflected in master 
#  to push these new change in new branch
    use <git push >    when HEAD is redirecting new branch 

# How to check commits in local:
# ------------------------------
	git log
	git log --oneline

# [you will get remote  branches to local repo]
git branch -r (remote)
then 
 
git pull  --> if you want to get changes from remote to local repo

