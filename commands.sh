rails new LearningRubyOnRails -T --database=postgresql

rails s

rails db:migrate

rails g scaffold Blog title:string body:text

sudo -u postgres psql -d learningrubyonrails_development
alter table schema_migrations owner to ror;
