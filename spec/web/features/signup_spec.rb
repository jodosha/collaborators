require "features_helper"

RSpec.feature "Signup" do
  scenario "with success" do
    data = omniauth_successful_signup

    visit "/"
    click_link "Signup"

    expect(current_path).to eq("/auth/github/callback")

    expect(page).to have_content(data.fetch("info").fetch("nickname"))
  end

  scenario "with failure" do
    omniauth_failing_signup

    visit "/"
    click_link "Signup"

    expect(current_path).to eq("/auth/failure")

    expect(page).to have_content("Invalid Credentials")
  end
end
