source 'https://rubygems.org'

ruby '3.0.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'google-api-client', require: 'google/apis/calendar_v3'
# Checkout with stripe for card payments
gem 'stripe'
# Copy emails for admin to clipboard
gem 'clipboard-rails'
#Devise for user login
gem 'devise'
# Mail form for rails
gem 'mail_form'
# Sendgrid
gem 'sendgrid-ruby'
# Instafeed gem to show recent instagram posts
gem 'instafeed'
# gem 'instagram' 
# Jquery gem
gem 'jquery-rails'
# Environment Variables
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'dotenv-rails', groups: [:development, :test]

gem 'figaro'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem "puma", ">= 4.3.8"
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 4.0.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use AWS-S3 for image, video, and mp3 storage
gem 'aws-sdk', '~> 3'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# gem 'listen', '>= 3.0.5', '< 3.2'
# Carrierwave and supporting gems for media upload
gem "carrierwave", '~> 2'
gem "mini_magick"
# gem 'asset_sync'
gem 'fog-core', '~> 2.2', '>= 2.2.4'
gem 'fog-aws', group: :production
  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', group: :development # Added development group.
  # gem 'pg', group: :production # Added postgres and made it production only.
  gem 'rails_12factor'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
 
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
