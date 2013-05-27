## Issue Description

This app demonstrates an issue that may be related to:

https://github.com/rails/rails/issues/10685

To recreate the issue:

1. Run rake db:setup
2. Start the server
3. Visit http://localhost:3000/posts
4. You should see "It's working."
5. Now modify app/controllers/posts_controller.rb and save it.
6. Visit http://localhost:3000/posts again.
7. You should see: "A copy of AdminConstraint has been removed from the module tree but is still active!"

To rectify the issue:

1. Edit app/constraints/admin_constraint.rb and change "User" to "::User" on line 3.
2. Restart the server.
3. Visit http://localhost:3000/posts
4. You should see "It's working."
5. Now modify app/controllers/posts_controller.rb and save it.
6. Visit http://localhost:3000/posts again.
4. You should continue to see "It's working."

