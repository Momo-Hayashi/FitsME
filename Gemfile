# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.5'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

gem 'ancestry'
gem 'cancancan'
gem 'cocoon'
gem 'devise'
gem 'devise-i18n'
gem 'dotenv-rails'
gem 'image_processing'
gem 'jp_prefecture'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'kaminari'
gem 'mini_magick'
gem 'payjp'
gem 'rails_admin', '~> 2.0'
gem 'ransack'

gem 'aws-sdk-s3', require: false

gem 'mini_racer', platforms: :ruby
gem 'unicorn'

gem 'rubocop', require: false
gem 'rubocop-rails', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'bcrypt_pbkdf'
  gem 'capistrano', '3.6.0' # capistranoのツール一式
  gem 'capistrano3-unicorn'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'ed25519'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
