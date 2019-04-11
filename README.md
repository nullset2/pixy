# Pixy 

Anonymous imageboard example.

Requires: Rails 5, Ruby 2.x

* Clone the repo
* `cd` into the directory you just cloned
* `bundle install`
* `rails db:setup` (make sure that you have a local postgres server running on port `5432`. If running in production, set the `DATABASE_URL` environment variable)
* `rails server`
