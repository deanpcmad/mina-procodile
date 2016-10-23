require 'mina/bundler'
require 'mina/rails'

namespace :procodile do
  set_default :procodile_cmd, -> { "procodile" }

  desc 'Start Procodile processes'
  task start: :environment do
    procodile_command(:start)
  end

  desc 'Stop Procodile processes'
  task stop: :environment do
    procodile_command(:stop)
  end

  desc 'Restart Procodile processes'
  task restart: :environment do
    procodile_command(:restart)
  end

  desc 'Show Procodile status'
  task status: :environment do
    procodile_command(:status)
  end

  def procodile_command(command)
    queue! %[
      cd #{current_path} && #{procodile_cmd} #{command} -r #{current_path}
    ]
  end
end
