#!/bin/bash
# Getting Started - First-Time Git Setup 
# ------path]/etc/gitconfig file
git init
git config --global user.email "vignan.kandelab@gmail"
git config --global user.name "john Doe"


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
git cat-file -s 992652a6c0ba53c623d8bc43fce09513ded44710
