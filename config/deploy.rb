require 'bundler/capistrano'

set :application, "sinatra-sample"
server "switchboard.wercker.com", :app, :web
set :user, "ubuntu"
set :group, "ubuntu"
set :use_sudo, false

set :repository, "."
set :scm, :none
set :deploy_via, :copy

ssh_options[:keys] = [ENV["CAP_PRIVATE_KEY"]]