unless Rails.env.production?
  require 'rubocop/rake_task'

  namespace :aster do
    desc 'Run style checker'
    RuboCop::RakeTask.new(:rubocop) do |task|
      task.requires << 'rubocop-rspec'
      task.fail_on_error = true
    end
  end
end
