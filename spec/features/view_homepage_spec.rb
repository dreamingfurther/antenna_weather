require 'rails_helper'

feature 'Viewing the homepage' do
  scenario 'visitor sees four days average windspeed' do
    create(:location)
    
    visit root_path

    expect(page).to have_content("3mph")
  end
end
