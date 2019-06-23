require 'mina/bundler'
require 'mina/rails'

namespace :procodile do
  set :procodile_cmd, -> { "procodile" }

  desc 'Start Procodile processes'
  task start: :remote_environment do
    procodile_command(:start)
  end

  desc 'Stop Procodile processes'
  task stop: :remote_environment do
    procodile_command(:stop)
  end

  desc 'Restart Procodile processes'
  task restart: :remote_environment do
    procodile_command(:restart)
  end

  desc 'Show Procodile status'
  task status: :remote_environment do
    procodile_command(:status)
  end

  def procodile_command(cmd)
    command %(#{fetch(:procodile_cmd)} #{cmd} -r #{fetch(:current_path)})
  end
end
