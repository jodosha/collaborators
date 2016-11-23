require "features_helper"

RSpec.feature "Visit home" do
  scenario "User sees contents" do
    visit "/"

    expect(current_path).to eq("/")
    expect(page).to have_title("Collaborators")
    expect(page).to have_content("Signup")
  end
end
