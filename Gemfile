source 'https://rubygems.org'

# Heroku uses the ruby version to configure your application's runtime.
ruby '2.1.5'

gem 'unicorn'
gem 'rack-canonical-host'
gem 'rails', '~> 4.2'
gem 'pg'

gem 'slim-rails'
gem 'sass-rails'
gem 'jquery-rails'
gem 'coffee-rails'
gem 'turbolinks'

gem 'paper_trail'

gem 'sorcery'
gem 'cancancan'
gem 'simple_form'

gem 'awesome_print'

# Heroku suggests rubyracer isnt necessary, but they're required to compile less assets on deploy.



# gem "figaro"
gem 'rolify'

# for phone number parsing and formatting
gem 'phone'

# for autolink generation
gem 'rinku'

# for breadcrumbs
gem 'breadcrumbs_on_rails'

# JSON serializer
gem 'active_model_serializers'

# PDF generation
gem 'prawn'

# pagination
gem 'kaminari'

#decorators
gem 'draper'

group :production do
  gem 'rails_12factor'
end

group :assets do
  gem 'less-rails'
  gem 'less-rails-bootstrap'
  gem 'uglifier'

  # Heroku suggests that these gems aren't necessary, but they're required to
  # compile less assets on deploy.

  gem 'therubyracer'
  gem 'libv8'
end


group :test, :development do
  gem 'rspec-rails'
  gem 'capybara'
  #gem 'capybara-email'
  gem 'poltergeist'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'fuubar'
  gem 'jasminerice',  github: 'drogar/jasminerice', branch: 'feature/console_reports'
  #gem 'timecop'
  gem 'simplecov'
  gem 'cane'
  gem 'morecane'
  gem 'quiet_assets'
  gem 'rubocop', require: false

  gem 'capybara-webkit'
  gem 'cucumber-rails', require: false
  gem 'rspec_junit_formatter'
  gem 'flog'
  gem 'flay'

  gem 'syntax'
  gem 'capybara-screenshot'

  gem 'rspec-formatter-webkit'

  gem 'pdf-reader'
end

group :development do
  gem 'foreman'
  gem 'launchy'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-jasmine'
  gem 'guard-livereload'
  gem 'guard-coffeescript'
  gem 'rb-fsevent'
  gem 'growl'
end
