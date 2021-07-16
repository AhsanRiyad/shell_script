#!/bin/bash

basePath='/home/riyad/Dev/Projects/gitlab/github/';

echo Started script, welcome;

read -p 'Enter commit msg ' commitMsg;

cd {basePath}myGov_documents;
git add .
git commit -m $commitMsg;
git push;


cd ${basePath}mygov_std_portal;
password='az5YB&,ua2fN_q%';
branch='riyad';
expect ${basePath}expect.exp $password;
git stash;
git checkout riyad;
sh ${basePath}copy.sh $basePath;
git add .
git commit -m ${commitMsg}
expect ${basePath}push.exp $password $branch;
