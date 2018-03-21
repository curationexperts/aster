set :stage, :sandbox
set :rails_env, 'production'
server 'aster-sandbox.curationexperts.com', user: 'deploy', roles: [:web, :app, :db]
