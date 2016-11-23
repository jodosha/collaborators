source 'https://rubygems.org'

gem 'bundler'
gem 'rake'

gem 'hanami',       '~> 0.9'
gem 'hanami-model', '~> 0.7'

gem 'pg'

gem 'omniauth-github'

group :development do
  gem 'shotgun'
  gem 'byebug'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'ffaker'
  gem 'fabrication', '~> 2.16'
  gem 'database_cleaner'
end

group :production do
  # gem 'puma'
end
