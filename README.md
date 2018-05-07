# README

FM Synthesis Tracker Patch/Instrument Uploader for Deflemask

* user - has many patches - has many categories through patches
  * username
  * password

* patch - belongs to user - has many categories
  * name
  * file
  * from what game?
  * original patch? boolean

* category - has many patches
  * name i.e. bass, lead, noise
