#! bin/bash


echo hellow world;

basePath='/home/riyad/Dev/Projects/gitlab/github/';


(cd ${basePath}myGov_documents; code .; php artisan serve --host=0.0.0.0 --port=8000)  &  (cd ${basePath}myGovStack_admin; code .; sudo php artisan serve --host=0.0.0.0 --port=81; ) &
(cd ${basePath}myGov_documents; npx tailwindcss -i ./tailwind.css -o ./public/new/dist/tailwind.css --minify -w;)

# cd ${basePath}myGovStack_admin;
# php artisan serve;

