source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 5.2.0'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end 

group :development do
  gem 'mailcatcher'
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end 

group :development, :test do
  gem 'rspec-rails', '~>3.0'
  gem 'rails-controller-testing'
end

gem 'puma', '~> 3.11'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'thor', '0.20.0'

gem 'devise'
gem 'figaro', '1.0'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
# gem 'bootstrap', '~> 4.1.1'
gem 'sprockets'
gem 'autoprefixer-rails'
gem 'pundit'
gem 'redcarpet'
