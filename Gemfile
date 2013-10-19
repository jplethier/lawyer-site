source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Database
gem 'pg', '0.14.1', :require => 'pg'
gem 'activerecord-postgresql-adapter'
# better activerecord queries
gem 'squeel'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'bourbon'

# Page-specific javascript
gem 'paloma'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Client side validation with jquery
gem 'jquery-validation-rails'

# html views
gem 'haml'
gem 'haml-rails'

# Authorization
gem 'cancan'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Fetch feed
gem 'feedzirra'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  # Performance
  # gem 'bullet'
  # gem 'rack-mini-profiler'
end

group :development, :test do
  gem 'awesome_print'
  gem 'factory_girl_rails'
  gem 'letter_opener'
  gem 'pry-debugger'
  gem "rspec-rails"
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '>= 1.0.1'
  gem 'launchy'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'simplecov', :require => false
  gem 'site_prism'
end
