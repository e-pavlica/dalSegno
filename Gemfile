source 'https://rubygems.org'

ruby "2.0.0"

#add gravator support for profiles
gem 'gravtastic'

#add elusive icons set
gem 'elusive-icons-sass-rails'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use mongoid for the db
gem "mongoid", github: "mongoid/mongoid"

#add HAML (becuse erb sucks a little)
gem "haml"

#add authentication/hash library
gem "bcrypt-ruby", github:'codahale/bcrypt-ruby'

# Use SCSS for stylesheets
#gem 'sass-rails', '~> 4.0.0'
#gem 'bootstrap-sass', '~> 2.3.2.1' #add the latest bootstrap

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'rails_12factor'
  gem 'passenger'
end
