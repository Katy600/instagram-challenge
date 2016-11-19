require 'rails_helper'

feature 'instagram user' do
  context "no photo's have been added" do
    scenario 'should display a prompt to add a photo' do
      visit '/photos'
      expect(page).to have_content "No photo's yet"
      expect(page).to have_link 'Add a Photo'
    end
  end
end
