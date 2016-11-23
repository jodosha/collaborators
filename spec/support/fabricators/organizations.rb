Fabricator(:organization) do
  user_id     { Fabricate(:user).id }
  uid         { Random.rand(999_999_999) }
  nickname    { |attrs| "#{FFaker::Internet.user_name}-#{attrs.fetch(:uid)}" }
  description { FFaker::HipsterIpsum.words.join(' ') }
  avatar_url  { |attrs| "https://auth.provider/orgs/avatars/#{attrs.fetch(:uid)}.png" }
end
