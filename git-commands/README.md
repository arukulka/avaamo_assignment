# avaamo_assignment

Setting Up script to run every time a repository receives a new commits through git push using Git Hooks
Steps to set configure the git hooks:
1. Clone the project and get into the cloned project.
2. Do ls -ltra to see the hidden files and get in to .git/hooks/ directory.
3. Create a new file with the name post-commit and give +x (executable) permission4. 
4. Put in any script like below and it will trigger post-commit script.
	#!/bin/bash
	echo "Post commit hook"git push origin master/main
	exit 0
5. The script will go ahead and push your local changes to remote repo.


======================================================================================
list of files that have changed in a particular commit?

$git log  ==> will give you the commit id, using that.
$git diff-tree -r <commit-id>  --> will show you the list files changed 
