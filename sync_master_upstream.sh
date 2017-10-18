#!bin/bash
#-----------------------------------------------------------------------------
# Author:         Tim Siwula <tcsiwula@gmail.com>
# File:           /usr/local/bin/sync_master_upstream.sh
# Date:           09/04/2017
#-----------------------------------------------------------------------------
# Permissions:    chmod +x /usr/local/bin/sync_master_upstream.sh
# Edit:           atom /usr/local/bin/sync_master_upstream.sh
# Run:            bash /usr/local/bin/sync_master_upstream.sh
# Alias:          syncm
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 Sync sequence
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo "->"
echo "-->"
echo "--->"
echo "---->"
echo "----->"
echo "        starting:    sync_master_upstream.sh"
git fetch upstream
git fetch --all
git checkout master
git merge upstream/master
# if ^above contains 'error', then 'git stash', then 'git merge upstream/master'
git push origin master
git status
echo "<-----"
echo "<----"
echo "<---"
echo "<--"
echo "<-"
echo "        finished:    sync_master_upstream.sh"
echo ""
