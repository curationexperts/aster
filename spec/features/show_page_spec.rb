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
end
