source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.0.0'
gem 'rails', '4.0.4'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'faker'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-livereload', require: false
  gem 'launchy'
  gem 'shoulda-matchers'
end

group :production do
  gem 'unicorn'
end

# Frontend
gem 'haml-rails'
# gem 'sass-rails' #, '~> 4.0.2'
gem 'sass-rails'
# gem 'bootstrap-sass' #, '2.3.2.0'
gem 'bootstrap-sass'
# sprockets >v2.12.0 breaks bootstrap-sass
gem 'sprockets', '2.11.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

# group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # gem 'sdoc', require: false
# end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
