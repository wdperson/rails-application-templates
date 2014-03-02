gem_group :development do  
  gem 'rspec-rails'
  gem 'pry'
end

gem_group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'ZenTest', :require => false  
  gem 'autotest-rails'
  gem 'autotest-growl'
  gem 'autotest-fsevent'  
  gem 'launchy'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end

run "cat << EOF >> .gitignore
/.bundle
/db/*.sqlite3
/db/*.sqlite3-journal
log/*
log/**/*
tmp/*
tmp/**/*
database.yml
doc/
*.swp
*.swo
*~
.DS_Store
public/uploads/*
*.orig
EOF"

if yes?("Download bootstrap?")
  run "wget https://github.com/twbs/bootstrap/archive/v3.0.0.zip -O bootstrap.zip -O bootstrap.zip"
  run "unzip bootstrap.zip -d bootstrap && rm bootstrap.zip"
  run "cp bootstrap/bootstrap-3.0.0/dist/css/bootstrap.css vendor/assets/stylesheets/"
  run "cp bootstrap/bootstrap-3.0.0/dist/js/bootstrap.js vendor/assets/javascripts/"
  run "rm -rf bootstrap"
  run "echo '@import \"bootstrap\";' >>  app/assets/stylesheets/application.css.scss"
  run "rails g simple_form:install --bootstrap"
end

git :init
git add: "."
git commit: %Q{ -m 'Initial commit' }

run "bundle install"
generate "rspec:install"
