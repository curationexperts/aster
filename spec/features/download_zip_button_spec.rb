# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'downloading the shapefile as a zip', type: :feature do
  let(:download_path) { '/download/gford-20140000-010015_belvegr?type=shapefile' }
  let(:page_markup) { page.html.to_s }
  before do
    Rake::Task['geoblacklight:solr:seed'].invoke
  end
  scenario 'viewing the download button on the show page' do
    visit solr_document_path 'gford-20140000-010015_belvegr'
    expect(page).to have_content('Download Shapefile')
    expect(page_markup.include?(download_path)).to eq(true)
  end
end
