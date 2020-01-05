# Ruby on Rails training

### From devCamp, Udemy

**Started at:** October 30, 2019

**Motivation:** First time with Ruby on Rails. Part of the training in the Apprentice Program at Pernix. One of the first web frameworks that I learn.

**Scope:** Portfolio application. Using generators and generating resources from scratch.

**Lessons Learned:** .

**Credits:** to @andreaabarca for review the code.

# Setup
Steps necessary to get the application up and running.

### System dependencies
Ruby version: 2.7.0

Rails version: 6.0.2

### Install the dependencies
```bash
$ bundle install
$ yarn install
```

### Database

#### (Recomended) PostgreSQL
Create a user specific for this application with his respective permissions.

```bash
$ sudo -u postgres psql
$ create role ruby with createdb;
$ alter role ruby with password 'rubyonrails';
$ alter role ruby with login;
```

#### Credentials
Copy the database.yml.template to a new file called database.yml.
```bash
cp config/database.yml config/database.yml.template
```

Change the values correctly to run in your environment. Now you can create the database.

#### Database creation
```bash
rails db:create
```

#### Database initialization
```bash
rails db:migrate
```

### Run local server
```bash
rails server
```

The server is running locally at http://localhost:3000/, go to your browser and open this URL.
