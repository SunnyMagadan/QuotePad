source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'jquery-rails'
gem 'devise'
gem 'slim'
gem 'twitter-bootstrap-rails'
gem 'gravatar_image_tag'
gem 'cancan'
gem 'kaminari'
gem 'coffee-rails', '~> 3.2.1'
gem 'resque'
gem 'resque_mailer'

group :production do 
  gem 'sqlite3'
  gem 'unicorn'
end

group :development do
  gem 'bluecloth'
  gem 'populator'
  gem 'faker'
  gem 'github-markup'
  gem 'slim-rails'
  gem 'ruby_parser'
  gem 'hpricot'
end

group :test do 
  gem 'email_spec'
  gem 'resque_spec'
  gem 'cucumber-rails', :require => nil
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'guard-cucumber'
  gem 'capybara-webkit'
  gem 'capybara'
end

group :development, :test do 
  gem 'ruby_gntp'
  gem 'sqlite3'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails', '~> 3.0'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

