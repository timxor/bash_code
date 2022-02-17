#!bin/bash
# pwd:
# chmod +x deploy_script.sh
# bash deploy_script.sh
# cp deploy_script.sh /usr/local/bin/deploy_script.sh
# alias deploy="bash deploy_script.sh"

echo "-----> starting /usr/local/bin/deploy_script.sh ---->"
git status
git add .
git status
git commit -m ":bowtie: [auto generated] via tim's deploy_script.sh"
git push
git status
echo "<----- done <----"
