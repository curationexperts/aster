# frozen_string_literal: true

unless Rails.env.production?
  APP_ROOT = File.dirname(__FILE__)
  require 'solr_wrapper'
  require 'solr_wrapper/rake_task'
  namespace :aster do
    desc 'Run Continuous Integration'
    task :travis do
      ENV['environment'] = 'test'
      solr_params = {
        port: 8985,
        verbose: true,
        managed: true
      }
      SolrWrapper.wrap(solr_params) do |solr|
        solr.with_collection(
          name: 'aster-test',
          persist: false,
          dir: Rails.root.join('solr', 'conf')
        ) do
          Rake::Task['aster:ci'].invoke
        end
      end
    end
  end
end
