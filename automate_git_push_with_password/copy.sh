#! bin/bash

# echo copying files;

# # make directory inside test
# mkdir /home/riyad/Dev/Projects/gitlab/github/test/tempFiles;

# # copy to temporary directory
# cp -rfv /home/riyad/Dev/Projects/gitlab/github/test/myGov_documents/* /home/riyad/Dev/Projects/gitlab/github/test/tempFiles/;

# # delete bitbucket folder
# rm -rfv /home/riyad/Dev/Projects/gitlab/github/test/mygov_std_portal/*

# #copy to this folder
# cp -rfv /home/riyad/Dev/Projects/gitlab/github/test/tempFiles/* /home/riyad/Dev/Projects/gitlab/github/test/mygov_std_portal/;

# # delete tmp folder
# rm -rfv /home/riyad/Dev/Projects/gitlab/github/test/tempFiles/*



echo copying files;

# make directory inside test
mkdir /home/riyad/Dev/Projects/gitlab/github/test/tempFiles;

# copy to temporary directory
cp -rf /home/riyad/Dev/Projects/gitlab/github/test/myGov_documents/* /home/riyad/Dev/Projects/gitlab/github/test/tempFiles/;

# delete bitbucket folder
rm -rf /home/riyad/Dev/Projects/gitlab/github/test/mygov_std_portal/*

#copy to this folder
cp -rf /home/riyad/Dev/Projects/gitlab/github/test/tempFiles/* /home/riyad/Dev/Projects/gitlab/github/test/mygov_std_portal/;

# delete tmp folder
rm -rf /home/riyad/Dev/Projects/gitlab/github/test/tempFiles/*;