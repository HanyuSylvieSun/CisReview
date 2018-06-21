# CisReview
CisReview is a review website for Computer Science courses. It enables students to write reviews about courses and instructors. It's written with Ruby on Rails. This repository contains the local version of the web app. The online version can be found at [CisReview](http://cisreview.herokuapp.com/)

# Local Server
cd into the folder and run
```
bundle install
rails db:migrate
rails s
```
Then you can view this website in [localhost:3000](http://localhost:3000/)
* Note that you might need install pg gem and nodejs gem in this step

# Gems used:
* **devise**: User authentication and management.
* **paperclip**: Image uploading(for instructors).
* **bootstrap-sass**: for Front-end layout.

