#!/bin/bash


echo "Started script, welcome";
read -p 'Enter commit msg' commitMsg;
cd /home/riyad/Dev/Projects/gitlab/github/test/mygov_std_portal;
password='Ahsan111@';
branch='riyad';
expect /home/riyad/Dev/Projects/gitlab/github/test/expect.exp $password;
git stash;
git checkout riyad;
sh /home/riyad/Dev/Projects/gitlab/github/test/copy.sh;
git add .
git commit -m ${commitMsg}
expect /home/riyad/Dev/Projects/gitlab/github/test/push.exp $password $branch;
