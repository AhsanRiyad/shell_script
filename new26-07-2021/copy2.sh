#!/bin/bash 

  

echo 'script started...'; 



cd /home/riyad/Dev/Projects/gitlab/github/myGovStack_admin; 

pwd;  

for i in $(ls -a); 

do 

  # echo $i 

  if [[ $i != '.git' &&  $i != '.' &&  $i != '..'  ]] 

  then 
        # cp -vrf $i /home/riyad/Dev/Projects/gitlab/github/mygov_std_portal_back/ 
        cp -rf $i /home/riyad/Dev/Projects/gitlab/github/mygov_std_portal_back/ 
        # echo $i;
        # echo 'copied..' ; 

    else 

        echo 'found';

    fi 

  

done 

echo 'copied backend';

  

  

 