# README

# Ruby on Rails Patch/Instrument Uploader for Music Tracker Applications

People can sign up, upload instruments and download other people's.  For sharing ripped or original Frequency Modulation patches for use in Deflemask Music Tracker.

* uploads handled by carrier wave gem

* sign up / in with twitter supported by omniauth

* currently supports uploading .y12 .dmp .tfi .bin patches

* Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0).

# Requirements

* ruby 2.5.1 (other versions will work if compatible to rails version)

* rails 5.1.6

# Installation Instructions

**List of commands to execute in your terminal**

* (fork the git repository to your own github profile)

* git clone https://github.com/nmlstyl/patch-uploader.git

* (navigate to directory)

* create an ENV (.env) file in the root directory of the project

* add values for Twitter Oauth to the ENV file => TWITTER_KEY=value and TWITTER_SECRET=value

* Twitter keys and secrets can be created at apps.twitter.com

* bundle install

* rake db:migrate

* rake db:seed

* rake start
