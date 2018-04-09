# frozen_string_literal: true
unless Rails.env.production?
  namespace :aster do
    task :spec do
      Rake::Task['spec'].invoke
    end
  end
end
