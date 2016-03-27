require 'rails_helper'

feature 'add a location' do
  it 'is visible on the dashboard' do
    visit admin_path
    fill_in "Town name", with: "Webster"
    fill_in "State", with: "MA"
    click_on "Create location"

    expect(page).to have_content "MA/Webster"
  end
end
