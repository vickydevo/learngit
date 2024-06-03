Date: 30/05/2024  Thursday
Batch: Guntur
Class DEVOPS  [morning]  :  2:30pm - 3:30pm
-------------------------------------------
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
