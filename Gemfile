source 'https://rubygems.org'

# Remember to specify the version of Ruby for Heroku #MDM
ruby "2.3.0"


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '4.2.5'

#For this class use rails 5.0.0.1 #MDM
gem 'rails', '5.0.0.1'

#  Add Devise for user authentication #MDM
gem 'devise'

# Let's use Active admin for user managment features #MDM
gem 'activeadmin', '~> 1.0.0.pre4'
# Also install a copy of inherited resources, becasue we are working iwth rails 5, and not all resources have been migrated just yet. #MDM
gem 'inherited_resources', github: 'activeadmin/inherited_resources'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Add in Bootstrap for Rails. #MDM
gem 'bootstrap', '~> 4.0.0.alpha4'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  
  # Move SQLite3 to the development server #MDM
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  
end



group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end



# Add the pg database to production for Heroku #MDM
group :production do
  gem 'pg'  
end
