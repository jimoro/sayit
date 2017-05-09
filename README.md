Bloccit
--------
 [Deployed on Heroku at https://rohrer-bloccit.herokuapp.com](https://rohrer-bloccit.herokuapp.com/)

 **A simple community discussion site** with a responsive design suitable for mobile use. Features include multiple user role/permission levels, topic areas, posts, comments, favoriting of posts, and up or down -voting of posts (essentially expressing 'liking' or 'disliking' of posts).

 - Visitors: Can browse and read discussion topics, posts, and comments
 - Members: Can also create posts and comments, and can edit & delete the posts and comments which they created
 - Administrators: Can also create topics and delete any content

The data model relationships look like this:

 - Users have many Posts, Comments, Votes, and Favorites
 - Topics have many Posts
 - Posts have many Comments, Votes, and Favorites
 - Posts belong to Users and Topics
 - Comments belong to Users and Posts
 - Favorites belong to Users and Posts
 - Votes belong to Users and Posts

Input data validation is performed by the ActiveRecord ORM for all user input fields.

----------


**Technology Used**

 - Ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]
 - Rails 5.0.0.1
 - Dev database: sqlite3 3.16.0
 - Production database: Postgres 9.5.4 (Heroku)
 - Rspec 3.5.4
 - Bootstrap (Bootstrap-SASS) 3.3.7
 - Bcrypt for password encryption


----------

**App Status**
All features are fully functional. Please note that most of the content of Topics, Posts, and Comments were inserted using the `rake db:seed` (actually `rails db:seed` since this is running on Rails 5).

Please feel free to sign up for an account and create new Posts and/or Comments!


> Written with [StackEdit](https://stackedit.io/).
