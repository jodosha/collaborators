require_relative '../../../../apps/web/controllers/sessions/create'

RSpec.describe Web::Controllers::Sessions::Create do
  let(:action) { described_class.new }
  let(:params) { RSpec::Support::OmniAuth.successful_params }

  it "is successful" do
    response = action.call(params)

    expect(response[0]).to eq 200
    expect(response[2]).to eq [params.dig("omniauth.auth", "info", "nickname")]
  end
end
