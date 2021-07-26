#!/bin/bash

basePath='/home/riyad/Dev/Projects/gitlab/github/';

echo Started script, welcome;
cd ${basePath}myGov_documents;

read -p 'Enter commit msg ' commitMsg;

cd ${basePath}myGov_documents;
echo 'will push to front end';
git fetch --all;
git add .;
git commit -m "$commitMsg";
git push;

cd "${basePath}myGovStack_admin";
echo 'will push to admin';
git fetch --all;
git add .;
git commit -m "$commitMsg";
git push;

echo 'will push to bitbucket front-end';
cd "${basePath}mygov_std_portal";
password='az5YB&,ua2fN_q%';
branch='riyad';
expect ${basePath}expect.exp $password;
git stash;
git checkout riyad;
sh ${basePath}copy.sh $basePath;
git add .
git commit -m "${commitMsg}"
expect ${basePath}push.exp $password $branch;


echo 'will push to bitbucket backend';
cd "${basePath}mygov_std_portal_back";
password='az5YB&,ua2fN_q%';
branch='riyad';
expect ${basePath}expect.exp $password;
git stash;
git checkout riyad;
bash ${basePath}copy2.sh;
git add .
git commit -m "${commitMsg}"
expect ${basePath}push.exp $password $branch;
