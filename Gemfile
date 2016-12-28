source 'https://rubygems.org'

gem 'rails', '~> 5.0.1'

gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'

gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'pg'

gem 'simple_form'
gem 'haml-rails'
gem 'has_scope'
gem 'validates_cpf_cnpj'
gem 'validates_timeliness'
gem 'email_validator'
gem 'file_validators'

gem 'pundit', :git => 'https://github.com/codhab/pundit.git', :branch => 'master'
gem 'carrierwave', git: 'https://github.com/carrierwaveuploader/carrierwave.git'
gem 'friendly_id'

gem 'tinymce-rails'
gem 'tinymce-rails-langs'
gem 'tinymce-rails-imageupload', '~> 4.0.0.beta'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'poltergeist'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

path 'engines' do 
  gem 'internal'
  gem 'portal'
end