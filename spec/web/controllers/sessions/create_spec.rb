require_relative '../../../../apps/web/controllers/sessions/create'

RSpec.describe Web::Controllers::Sessions::Create do
  let(:action) { described_class.new }
  let(:params) { Hash["omniauth.auth" => { "info" => { "nickname" => "jodosha" } }] }

  it "is successful" do
    response = action.call(params)

    expect(response[0]).to eq 200
    expect(response[2]).to eq ["jodosha"]
  end
end
