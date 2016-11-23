require_relative '../../../../apps/web/controllers/organizations/index'

RSpec.describe Web::Controllers::Organizations::Index do
  let(:action) { described_class.new(authenticator: authenticator) }
  let(:params) { Hash[] }
  let(:user)   { Fabricate.build(:user) }

  before do
    authenticator.sign_in!(user)
  end

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
