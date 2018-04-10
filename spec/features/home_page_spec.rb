# frozen_string_literal: true
require 'spec_helper'
RSpec.describe 'viewing content on the aster home page', type: :feature do
  scenario 'viewing the version' do
    visit '/'
    expect(page).to have_css '.version'
  end
end
