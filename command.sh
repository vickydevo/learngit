#!/bin/bash
# Getting Started - First-Time Git Setup 
# ------path]/etc/gitconfig file
# starting local repository
git init
git status            # u may get untracked files and floders
git add .             # move files to staging
git commit -m " give some message related to the changes"

# add global configurations
git config --global user.email "vignan.kandelab@gmail"
git config --global user.name "john Doe"

# Now create repository in github repository
git remote add origin <git repository url >
# git remote add origin https://github.com/vickydevo/simple-node-server-ankit.git
git push origin master or main            # depends on branch

# check for remote repository push or fetch 
git remote        # output #** origin 
git remote -v  

# how many branches are there? what are they
git branch -a

git fetch 
git pull


git status
git log
git push
git pull


cd .git/

ls -lart

cat HEAD

cd objects/


echo "hello-world"
ls
cd 6b/
ls
git cat-file -p 6b820fd9037ce516d22549dde403f3bb9a41ad8e
git cat-file -s 6b820fd9037ce516d22549dde403f3bb9a41ad8e
echo 'melky'| git hash-object --stdin -w
git cat-file -s 2e1e06962f750bb9ec4933c037da198e51f60b9d
