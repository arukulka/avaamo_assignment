# avaamo_assignment

Setting Up script to run every time a repository receives a new commits through git push using Git Hooks
Steps to set configure the git hooks:
1. Clone the project and get into the cloned project.
2. Do ls -ltra to see the hidden files and get in to .git/hooks/ directory.
3. Create a new file with the name post-commit and give +x (executable) permission4. Put in the below script.
	#!/bin/bash
	echo "Post commit hook"git push origin master
	exit 0
