require "features_helper"

RSpec.feature "Visit organizations" do
  scenario "without organizations" do
    when_successfully_signed_in

    visit "/organizations"

    expect(current_path).to eq("/organizations")
    expect(page).to have_content("Organizations")

    expect(page).to have_content("No organizations found")
    expect(page).to have_content("Sync with GitHub")
  end

  scenario "with organizations" do
    current_user = when_successfully_signed_in
    orgs = Fabricate.times(2, :organization, user_id: current_user.id)

    visit "/organizations"

    expect(current_path).to eq("/organizations")
    expect(page).to have_content("Organizations")
    expect(page).to have_content("Sync with GitHub")

    orgs.each do |org|
      expect(page).to have_content(org.nickname)
    end
  end
end
