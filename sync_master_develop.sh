#!bin/bash
#-----------------------------------------------------------------------------
# Author:         Tim Siwula <tcsiwula@gmail.com>
# File:           /usr/local/bin/sync_master_develop.sh
# Date:           09/04/2017
#-----------------------------------------------------------------------------
# Permissions:    chmod +x /usr/local/bin/sync_master_develop.sh
# Edit:           atom /usr/local/bin/sync_master_develop.sh
# Run:            bash /usr/local/bin/sync_master_develop.sh
# Alias:          syncd
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 Sync sequence
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo "->"
echo "-->"
echo "--->"
echo "---->"
echo "----->"
echo "        starting:    sync_master_develop.sh"
git fetch --all
git checkout develop
git merge upstream/develop
# if ^above contains 'error', then 'git stash', then 'git merge upstream/develop'
git push origin develop
git status
echo "<-----"
echo "<----"
echo "<---"
echo "<--"
echo "<-"
echo "        finished:    sync_master_develop.sh"
echo ""
