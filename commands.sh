# Create the app
rails new LearningRubyOnRails -T --database=postgresql

# Create an api app
# rails new LearningRubyOnRails -T --database=postgresql --api

# Create rails database on postgresql
rails db:create

# Start rails server
rails s

# Update the database
rails db:migrate

# Generate new content with scaffold (not recommended)
rails g scaffold Blog title:string body:text

# Generate a controller Pages with his pages
# A controller does not have attributes
rails g controller Pages home about contact

# Generate a model with his attributes
rails g model Skill title:string percent_utilized:integer

# Generate a resource, very skiny or minimalistic scaffold
rails g resource Portafolio title:string subtitle:string body:text main_image:text thumb_image:text

# (Optional) Paste that on the file config/application.rb inside the class
```
config.generators do |g|
  g.orm :active_record # standart rails default connection to the database
  g.template_engine :erb # depends on wich one you use
  g.test_framework :test_unit, fixture: false
  g.stylesheets false # do not generate
  g.javascripts false # do not generate
```

# Postsgresql

# Console of the databasename
sudo -u postgres psql -d databasename

# Give permissions to username on the schema_migrations create_table
# Useful to do db:migrate
alter table schema_migrations owner to username;
