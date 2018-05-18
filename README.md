# README

Ruby on Rails Patch/Instrument Uploader for Music Tracker Applications

On this social media page people can sign up, upload instruments and download other people's

For sharing ripped or original Frequency Modulation patches

 * uploads handled by carrier wave gem

 * currently supports uploading .y12 .dmp .tfi .bin patches

  * copyright joey michalina mariano 2018

# Installation Instructions

* list of commands to execute in your

(fork the git repository to your own github profile)

git clone https://github.com/nmlstyl/patch-uploader.git

(navigate to directory)

bundle install

rake db:migrate

rake db:seed

thin -R config.ru -a 127.0.0.1 -p 3000 start --ssl
