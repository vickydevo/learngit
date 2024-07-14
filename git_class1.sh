Date: 30/05/2024  Thursday
Batch: Guntur
Class DEVOPS  [morning]  :  2:30pm - 3:30pm
-------------------------------------------
GIT (Global Information Tracker)

https://www.youtube.com/watch?v=LGLuHYHbCFA  look into it
git, github
-----------
1.VCS & GIT Repos
2.staging area and commit
3. Branching
4. issues and pull request (PRs)

Deployment is the mechanism through which applications, modules, 
  updates, and patches are delivered from developers to users.

What Is Deployment in DevOps? 
Deployment in DevOps is a process that enables you to retrieve important codes from version control
 so that they can be made readily available to the public and 
 they can use the application in a ready-to-use and automated fashion.

  project - website
  -------------------

    code changes --> redeploy
    we get bugs (unexpected error)
    traffic --> decrease ---> because user experince (ux)
    we revert back to pervious code some version 1.5.2

Explained about VCS/SCM?

   VCS could refer to Version Control System, which is a software that tracks changes to files over time. 
   This allows developers to collaborate and go back to previous versions of files without having to manage them manually. 
   VCS can be used for many types of files, including software source code, images, and layouts. 

Difference between Centralised[SVN] and Distributed VCS [GITHUB]
Create GITHUB account
Download git bash
create repository in github [remote repository]
git cmds
---------
 Getting Started - First-Time Git Setup 
# ------path]/etc/gitconfig file
# add global configurations
    git config --global user.email "vignan.kandelab@gmail"
    git config --global user.name "john Doe"
# To show branch name in "git log" outputs
    git config --global log.decorate auto
    
# starting local repository
        git init   --> Create repository
        git status     # u may get untracked files and floders
        git add .      # move files to staging
        git commit -m " give some message related to the changes" --> moves files to local repo
#  Git that you want to add a new remote repository.
        git remote add origin <git repository url >
# git remote add origin 
        git push -u origin master/main            # depends on branch
