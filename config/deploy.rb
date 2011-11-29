# RVM bootstrap
$:.unshift(File.expand_path("~/.rvm/lib"))
require 'rvm/capistrano'
set :rvm_ruby_string, '1.9.2-p136'
set :rvm_type, :user

# # bundler bootstrap
require 'bundler/capistrano'

# main details
set :application, "173.203.243.60"
role :web, "173.203.243.60"
role :app, "173.203.243.60"
role :db,  "173.203.243.60", :primary => true

# # server details
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :deploy_to, "/var/www/rotilady.com"
set :deploy_via, :remote_cache
set :user, "passenger" 
set :password, "Sriram_2010"
set :use_sudo, true
set :port, 30000
#
# repo details
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :scm, :git
set :scm_username, "passenger"
set :scm_passphrase, "passenger"
set :repository, "git@github.com:yogione/rl.git"
set :branch, "master"
set :git_enable_submodules, 1
set :scm_verbose, true
#
# tasks
namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
  #
  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc "Symlink shared resources on each release - not used"
  task :symlink_shared, :roles => :app do
    #run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  
end

  desc "Copy database.yml file "
task :copy_db_file, :roles => :app do
  sudo "cp /home/passenger/plsql/rl_database.yml /var/www/rotilady.com/current/config/database.yml"
end

desc "restart apache "
task :restart_apache, :roles => :app do
  sudo "/etc/init.d/apache2 restart"
end

after 'deploy:update_code', 'deploy:symlink_shared', :copy_db_file, :restart_apache
after 'deploy:restart', :copy_db_file, :restart_apache

