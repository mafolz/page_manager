require "bundler/capistrano"
require 'capistrano/cowboy'

set :application, "Under Pressure - Music"
#set :repository,  "set your repository location here"

set :scm, :subversion
set :use_sudo, false
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
server = 'vserver13.iota.railshoster.de'
set :deploy_to, '/var/www/up-web'
role :web, server                          # Your HTTP server, Apache/etc
role :app, server                          # This may be the same as your `Web` server
role :db,  server, :primary => true # This is where Rails migrations will run
role :db,  server
#default_environment["PATH"] = '/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games:/home/mafolz/.gem/ruby/1.8/bin:/root/git:/opt/ruby-enterprise-1.8.7-2010.02/bin'
# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
