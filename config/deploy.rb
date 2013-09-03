set :application, "simple_cms"
set :repository,  "git@github.com:lekofev/simple_cms.git"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "root"
set :use_sudo, true
set :deploy_to , "/var/www/#{application}"
set :deploy_via, :remote_cache
set :ssh_options, { :forward_agent => true }

role :web, "192.241.202.118"                          # Your HTTP server, Apache/etc
role :app, "192.241.202.118"                          # This may be the same as your `Web` server
role :db,  "192.241.202.118", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

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

# desc "Check that we can access everything"
# task :check_write_permissions do
#   on roles(:all) do |host|
#     if test("[ -w #{fetch(:deploy_to)} ]")
#       info "#{fetch(:deploy_to)} is writable on #{host}"
#     else
#       error "#{fetch(:deploy_to)} is not writable on #{host}"
#     end
#   end
# end

# desc 'Check that the repository is reachable'
# task check: :'git:wrapper' do
# fetch(:branch)
# 	on roles :all do
# 	  with git_environmental_variables do
# 	    execute :git, :'ls-remote', 'git@github.com:lekofev/simple_cms.git'
# 	  end
# 	end
# end