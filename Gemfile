source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.1.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Rails Html Sanitizer for HTML sanitization
gem 'rails-html-sanitizer', '~> 1.0'

group :test do
  # Easier test writing
  gem "shoulda-matchers", "~> 3.1.0"

  # Test coverage
  gem 'simplecov', require: false
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Test framework
  gem 'rspec-rails', '~> 3.4.0'

  # Mock framework
  gem 'mocha', '~> 1.1.0'

  # Fixtures made easy
  gem 'factory_girl_rails', '~> 4.5.0'

  # JavaScript unit tests
  gem "konacha", "~> 3.7.0"
  gem 'sprockets-rails', '< 3' # Restriction required until https://github.com/jfirebaugh/konacha/issues/216 gets fixed

  # Mocks and stubs for JavaScript tests
  gem 'sinon-rails'

  # Gem update manager
  gem 'gisdatigo', '~> 0.0.1'
end

# Acceptance tests
group :cucumber do
  gem 'cucumber', '~> 1.3.18'
  gem 'cucumber-rails'
  # Version fixed greater than 1.4.1. See:
  # https://github.com/DatabaseCleaner/database_cleaner/issues/317
  gem 'database_cleaner', '>= 1.4.1'
  gem 'poltergeist', '~> 1.8.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
