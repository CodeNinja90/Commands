




'

Git Configuration

'

git config --global user.name " <user-name> " 

git config --global user.email " <user-email> "

git config --global core.editor " open -W -n " 

# git can also be configured using SSH : https://www.youtube.com/watch?v=H5qNpRGB7Qw&t=677s





'Create or clone'




git init 

git clone <Path to repo>




' Add files / Remove files / status '



git add <file name>

git add -a 
# add all , can also use * insted of -a

git rm <file name> 
# removes the file

git status 
# returns the status of the files
 




' Commit files / commit log'


git commit -m "commit msg" 
# commits the file

git commit -a -m "commit msg" 
# commit all files without staging

git commit --amend -m "New commit message" 
# ammends the last commit . Use can also use --no-edit flag is you dont need to change the msg


git log 
 # returns commit logs


 
' Git Tagging 
' 


# tags are aliases for commits

git tag
 # lists all the tags

git tag <tag name> 
# creates a tag for current head

git tag -d <tag name> 
# delets a given tag



git push origin <tag name > 
# pushing tags
git push origin --tags 
# pushing all tags

git push origin -d <tag name> 
#pushing delete tag . You can also include multiple tags at once.

#----

# reference : https://www.youtube.com/watch?v=govmXpDGLpo

# reference : https://dev.to/neshaz/a-tutorial-for-tagging-releases-in-git-147e '




'Checkout/ Diff / Restore Files
'


Git checkout head 

'--'

git diff 
# compares working directory with staging area

git diff --staged 
#compares staged code to local repo

git diff HEAD 
#compares local repo to working directory

git diff <commit ID1> <commit ID2> 
#compare to commits


'---'

git checkout head~2 <file name>
#changes working directory to reflect previous commits (in position 2)

git checkout -- <file name> 
#changes the working dir based on contents of staged files


git reset HEAD~2 <file name > 
#this changes the contents of staged files based on previous commited files ( in position 2)

'--'

git checkout Head~2 
#this also moves the head a couple of commit back , but the commit in the front is hangind head. | Can also use commit id


git reset HEAD~2 
#this acts on the commit dir and it moves the head back by 2 places. The commits in the front will be lost | Can also use commit id


git revert HEAD~2 
#this creates a new commit with the contents of previous commit ( in position 2) | Can also use commit id

#---

# reference : https://dzone.com/articles/reset-checkout-and-revert | https://www.youtube.com/watch?v=VUuGa1QFmcA

# Use -- soft -- mixed -- hard flags as required.

# These commands work by using the data from local repo.





 
' Git Branching / Merging
'


git branch -a 
# list branches

git branch <branch name>
 # creates a branch

git branch -d <branch name>
 # Delete a branch

git checkout <branch name> 
# switches branch

git checkout -b <branch name> 
# create a branch and switch to it

git checkout -b <new-branch> <existing-branch>
# Creates new branch based on existing  branch instead of current branch


git merge <target branch> 
# Merges target branch with current branch




' Git Remote/ fetch / pull
'

git remote 
# show list of configured remotes

git remote show <remote name> 
# Details of the remote

git remote add origin <repo link> 
# Adding a remote repo.here origin is the local repo name , it can be anything

git remote remove <remote name> 
# removes a remote 

#--

git push -u origin master 
# pushig data to repo .origin is repo name & master is branch name . -u sets downstream

git fetch orgin master 
# gets the data from remote to local repo  orgin master can be dropped down stream is setup # Merge /Rebase after fetching

git pull orgin master 
# gets data from remote and merges it with working directory #orgin master can be dropped down stream is setup

`Notes`

# Git Workflow: https://drive.google.com/file/d/1YlHVVeJufQAKmJZs8FCVjsFN7BMDHyQN/view?usp=sharing

# Merge conflicts: https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts | Strategies : https://www.atlassian.com/git/tutorials/using-branches/merge-strategy

# Pull request: https://www.youtube.com/watch?v=e3bjQX9jIBk


















