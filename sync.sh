#!/usr/bin/bash

# mkdir excluded_dir
# ls -A is not ls -a (excludes "." and "..")

# safely move root files to a dir in root
# git mv $(ls -A | grep -vE '(^excluded_dir$|^README\.md$)') excluded_dir/

# exclude hidden files too
# git mv $(ls -A | grep -vE '(^excluded_dir$|^README\.md$)') excluded_dir/


# cd ./sih
pwd
git checkout -B niru
echo ____
git pull
echo ____
git merge origin/main -m "Sync with main"
echo ____
git push --set-upstream origin niru

if [ "$1" == "push" ]; then
    
    # cd ./sih
    pwd
    git checkout -B niru
    echo ____
    git status
    echo ____
    git add .
    git status
    echo "Enter Commit Message:"
    read commit_msg
    git commit -m "$commit_msg"
    echo ____
    git push --set-upstream origin niru
fi

