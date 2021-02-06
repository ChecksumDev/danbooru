set :user, "danbooru"
set :rails_env, "production"
set :delayed_job_workers, 8
append :linked_files, ".env.production"

server "booru", :roles => %w(web app cron), :primary => true

set :newrelic_appname, "Danbooru"
after "deploy:finished", "newrelic:notice_deployment"
