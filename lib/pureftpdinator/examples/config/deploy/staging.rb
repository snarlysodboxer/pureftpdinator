##### pureftpdinator
### ------------------------------------------------------------------
set  :domain,                         "my-app-staging.example.com"
server fetch(:domain),
  :user                               => fetch(:deployment_username),
  :roles                              => [:app, :web, :db]
set :pureftpd_image_name,             "snarlysodboxer/ruby-ree-1.8.7-2012.02_pure-ftpd-1.0.42:0.0.0"
set :pureftpd_container_name,         "#{fetch(:domain)}-pure-ftpd"
set :pureftpd_container_max_mem_mb,   "512"
set :pureauthd_container_name,        "#{fetch(:domain)}-pure-authd"
set :pureauthd_container_max_mem_mb,  "512"
### ------------------------------------------------------------------
