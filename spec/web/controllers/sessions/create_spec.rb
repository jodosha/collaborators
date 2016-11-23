require_relative '../../../../apps/web/controllers/sessions/create'

RSpec.describe Web::Controllers::Sessions::Create do
  let(:action) { described_class.new(authenticator: authenticator) }
  let(:params) { RSpec::Support::OmniAuth.successful_params }

  it "is successful" do
    response = action.call(params)

    expect(response[0]).to eq 302
    expect(response[1].fetch("Location")).to eq("http://0.0.0.0:2300/organizations")
  end
end
