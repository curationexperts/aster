set :stage, :demo
set :rails_env, 'production'
server 'aster-demo.curationexperts.com', user: 'deploy', roles: [:web, :app, :db]
