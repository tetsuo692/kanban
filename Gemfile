source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'rails-api'

gem 'sqlite3'


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem "active_model_serializers", :github => "rails-api/active_model_serializers"
group :assets do
  gem "sass-rails", "~> 3.2"
  gem "coffee-rails", "~> 3.2"
  gem "compass-rails"
  gem "uglifier"
  gem "bootstrap-sass", "~> 2.3.1.0"
  gem "handlebars_assets"
  gem "jquery-rails"
  gem "ember-rails"
  gem "modernizr-rails"
end

group :development do
  gem "quiet_assets"
end

group :test, :development do
  gem "parallel_tests"
  gem 'spork-rails'
  gem "webrat"
  gem "shoulda-matchers"
  gem "factory_girl_rails"
  gem "rspec-rails", "~> 2.0"
  gem 'database_cleaner'
  gem 'rb-inotify', :require => false
  gem 'rb-fsevent', :require => false
  gem 'rb-fchange', :require => false
  gem 'guard'
  gem 'terminal-notifier-guard'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'rb-fsevent'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'active_model_serializers-matchers', :github => "tetsuo692/active_model_serializers-matchers"
end
