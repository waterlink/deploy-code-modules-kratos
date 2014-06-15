require "deploy/code"
require "deploy/code/modules/kratos/version"

module Deploy
  module Code
    module Modules
      module Kratos
        # Your code goes here...
      end
    end
  end
end

Deploy::Code.within_capistrano do

  puts "Loading kratos module. Use KRATOS_APP option for non-standard app names."

  namespace :kratos do
    task :restart do
      run "cd $HOME/kratos && env=#{ENV['RAILS_ENV']} ./tasks/apps/#{ENV['KRATOS_APP'] || application}/restart; true"
    end

    task :install do
      run "cd $HOME/kratos && env=#{ENV['RAILS_ENV']} ./tasks/apps/#{ENV['KRATOS_APP'] || application}/install; true"
    end

    task :cook do
      run "cd $HOME/kratos && env=#{ENV['RAILS_ENV']} ./tasks/apps/#{ENV['KRATOS_APP'] || application}/cook; true"
    end
  end

  after :deploy, 'kratos:install'
  after :deploy, 'kratos:restart'
  after :deploy, 'kratos:cook'

end

