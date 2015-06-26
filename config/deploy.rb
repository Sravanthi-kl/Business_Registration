require 'bundler/capistrano'
require 'capistrano/ext/multistage'

set :application, "Registration"
set :repository,  "https://github.com/Sravanthi-kl/Business_Registration.git"
set :branch, "master"
set :deploy_via, :remote_cache
set :scm, :git

ssh_options[:forward_agent] = true
set :scm_username, 'Sravanthi-kl'
set :use_sudo, false

set :normalize_asset_timestamps, false

set :stages, ["staging", "production"]
set :default_stage, "staging"