# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.5"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3"

gem "mysql2"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

gem "active_model_serializers"
gem "rails_admin", "~> 3.0"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing"

# Pretty print Ruby objects with proper indentation and colors [https://github.com/awesome-print/awesome_print]
gem "awesome_print"

# A library for generating fake data such as names, addresses, and phone numbers [https://github.com/faker-ruby/faker]
gem "faker"

# A Ruby static code analyzer and formatter, based on the community Ruby style guide [https://github.com/rubocop/rubocop]
gem "rubocop", require: false

# An extension of RuboCop focused on code performance checks [https://github.com/rubocop/rubocop-performance]
gem "rubocop-performance", require: false

# A RuboCop extension focused on enforcing Rails best practices and coding conventions [https://github.com/rubocop/rubocop-rails]
gem "rubocop-rails", require: false

# Code style checking for Minitest files [https://github.com/rubocop/rubocop-minitest]
gem "rubocop-minitest", require: false

# Guard is a command line tool to easily handle events on file system modifications [https://github.com/guard/guard]
gem "guard"

# Guard::Minitest automatically run your tests (much like autotest) [https://github.com/guard/guard-minitest]
gem "guard-minitest"

# Guard plugin for RuboCop [https://github.com/guard/guard-rubocop]
gem "guard-rubocop"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "rack-cors", require: "rack/cors"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # A library for setting up Ruby objects as test data [https://github.com/thoughtbot/factory_bot_rails]
  gem "factory_bot_rails"

  # Simple one-liner tests for common Rails functionality [https://github.com/thoughtbot/shoulda-matchers]
  gem "shoulda-matchers", "~> 4.0"
end

gem "sassc-rails"
