require "features_helper"

RSpec.feature "Signup" do
  scenario "with success" do
    data = omniauth_successful_signup

    visit "/"
    click_link "Signup"

    expect(current_path).to eq("/organizations")

    expect(page).to have_content("Organizations")
  end

  scenario "with failure" do
    omniauth_failing_signup

    visit "/"
    click_link "Signup"

    expect(current_path).to eq("/auth/failure")

    expect(page).to have_content("Invalid Credentials")
  end
end
