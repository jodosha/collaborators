Fabricator(:user) do
  uid        { Random.rand(999_999_999) }
  nickname   { |attrs| "#{FFaker::Internet.user_name}-#{attrs.fetch(:uid)}" }
  email      { |attrs| "#{attrs.fetch(:nickname)}@example.test" }
  token      { SecureRandom.uuid }
  name       { FFaker::Name.name_with_prefix_suffix }
  avatar_url { |attrs| "https://auth.provider/avatars/#{attrs.fetch(:uid)}.png" }
end
