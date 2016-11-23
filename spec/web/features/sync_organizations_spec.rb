require "features_helper"
require "ostruct"

RSpec.feature "Sync organizations" do
  scenario "is successful" do
    current_user  = when_successfully_signed_in
    organizations = [Fabricate.attributes_for(:organization)].map do |org|
      OpenStruct.new(id: org.fetch(:uid), login: org.fetch(:nickname),
                     avatar_url: org.fetch(:avatar_url), org: org.fetch(:description))
    end

    expect(Collaborators::Organizations).to receive(:all).with(current_user.nickname).and_return(organizations)

    visit "/organizations"
    click_link "Sync with GitHub"

    expect(current_path).to eq("/organizations")

    within "#organizations" do
      organizations.each do |org|
        expect(page).to have_content(org.nickname)
      end
    end
  end
end
