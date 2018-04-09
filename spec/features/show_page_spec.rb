# frozen_string_literal: true
require 'spec_helper'

RSpec.describe 'viewing content on the aster show page', type: :feature do
  before do
    Rake::Task['geoblacklight:solr:seed'].invoke
  end
  scenario 'viewing the show page' do
    visit solr_document_path 'gford-20140000-010015_belvegr'
    expect(page).to have_content 'Vegetation, Maya Forest, Belize, 1995'
  end
  scenario 'viewing the show page and not seeing links back to Geoworks/Hyrax/Iris' do
    visit solr_document_path 'gford-20140000-010015_belvegr'
    expect(page).not_to have_link 'http://iris-demo.curationexperts.com/concern/vector_works/7d278t00k'
  end
end
