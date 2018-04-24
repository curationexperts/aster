set :stage, :localhost
set :rails_env, 'production'
server '127.0.0.1', user: 'adrl', roles: [:web, :app, :db]
