require_relative '../../../../apps/web/controllers/organizations/sync'

class FakeInteractor
  def initialize(*)
  end

  def call
  end
end

RSpec.describe Web::Controllers::Organizations::Sync do
  let(:action) { described_class.new(authenticator: authenticator, interactor: interactor) }
  let(:params) { Hash[] }
  let(:interactor) { FakeInteractor }

  it 'redirects to organizations page' do
    response = action.call(params)

    expect(response[0]).to eq 302
    expect(response[1].fetch("Location")).to eq("http://0.0.0.0:2300/organizations")
  end
end
