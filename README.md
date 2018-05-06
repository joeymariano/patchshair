# README

FM Sythesis Tracker Patch/Instrument Uploader for Deflemask

* user - has many patches - has many categories through patches
  * username
  * password

* patch - belongs to user - has many categories - has one tracker
  * name
  * file
  * from what game?
  * original patch? boolean

* category - has many patches
  * name i.e. bass, lead, noise
