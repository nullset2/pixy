# Pixy 

Anonymous imageboard example.

Requires: Rails 6, Ruby 2.7.7

* Clone the repo
* `cd` into the directory you just cloned
* `bundle install`
* `rails db:setup` (make sure that you have a local postgres server running on port `5432`. If running in production, set the `DATABASE_URL` environment variable)
* `rails server`

I recommend running the application through the Dockerfile, since 2.7.7 is EOL

```
docker build .
docker run -p 3000:3000 --network host -it {image id}
```

