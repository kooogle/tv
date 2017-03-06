source 'https://gems.ruby-china.org'  #Ruby-China源
#source 'https://rubygems.org/'  #官方源

gem 'rails', '4.2.7'
gem 'mysql2', '0.4.5' # Use mysql as the database for Active Record
gem 'sass-rails', '5.0.6' # Use SCSS for stylesheets
gem 'uglifier', '3.0.2' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '4.2.1' # Use CoffeeScript for .coffee assets and views
gem 'therubyracer', platforms: :ruby
gem 'faraday', '0.9.2' # http get post
gem 'jquery-rails','4.2.0' # Use jquery as the JavaScript library
gem 'turbolinks','5.0.0' # Turbolinks makes following links in your web application faster
gem 'jbuilder', '2.6.0' # Build JSON APIs with ease
gem 'fume-settable', '0.0.3' #settings plugin for read on yaml, ruby, database, etc
gem 'will_paginate', '3.1.0' #数据分页
gem 'to_xls-rails', '1.3.1' # export xls data
gem 'qiniu', '6.8.0' #http://developer.qiniu.com/code/v6/sdk/ruby.html file upload cdn
gem 'puma', '3.6.0' #Server
gem 'bcrypt', '3.1.10'# Use ActiveModel has_secure_password
gem 'cancancan', '1.15.0' # User authorization
gem 'devise','3.4.0' # User authentication
gem 'redis-rails','5.0.1' # cache use redis
gem 'redis-rack-cache', '2.0.0'
# gem 'rack-cache', '1.6.1', require:'rack/cache'# enable HTTP caching for application

group :production do
  gem 'lograge', '0.4.1'
end

group :development do
  gem 'spring', '2.0.0' # bin/bundle exec spring binstub --all
  gem 'capsum', '1.0.4', require: false #collect gems and recipes for capistrano
  gem 'capistrano-rails', '1.1.7'
  gem 'capistrano-rvm', '0.1.2'
  gem 'capistrano-bundler', '1.1.4'
  gem 'shoulda-matchers', '3.1.1' # provides RSpec- and Minitest-compatible one-liners that test common Rails functionality
  gem 'capistrano3-puma','1.2.1'
  gem 'pry-rails', '0.3.4'
  gem 'pry-byebug', '3.3.0'
  gem 'guard-livereload', '2.5.2' #automatically reloads your browser when 'view' files are modified
end

group :test do
  gem 'rspec-rails', '3.4.2'
  gem 'factory_girl_rails', '4.6.0'
  gem 'json_spec', '1.1.4' #RSpec matchers and Cucumber steps for testing JSON content
  gem 'rspec-sidekiq', '2.2.0'
  gem 'simplecov', '0.9.2', require: false
  gem 'database_cleaner', '1.5.1'
  gem 'mocha', '1.1.0'
  gem 'minitest', '5.8.4'
  gem 'guard-rspec', '4.6.4' # automatically & intelligently launch specs when files are modified
end

