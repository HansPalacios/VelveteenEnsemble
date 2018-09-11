source 'https://rubygems.org'

# ruby '2.4.4'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
#Devise for user login
gem 'devise'
# Mail form for rails
gem 'mail_form'
# Sendgrid
gem 'sendgrid-ruby'
# Devise for user login
gem 'devise'
# Instafeed gem to show recent instagram posts
gem 'instafeed'
# Jquery gem
gem 'jquery-rails'
# Environment Variables
gem 'figaro'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
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
gem 'listen', '>= 3.0.5', '< 3.2'
# Carrierwave and supporting gems for media upload
gem "carrierwave", '~> 1.2.1'
gem "mini_magick"
# gem 'asset_sync'
gem 'fog'
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
