Creative Business Cup
=============================


Install
-------

Clone the project
  `git clone git://github.com/josemarluedke/creative_business_cup.git`

Enter in your app folder
  `cd creative_business_cup`

Install dependencies
  `bundle install`

Configure your database.ym
  `cp config/database.yml.sample config/database.yml`

Create the databases
  `rake db:create`

Create the tables
  `rake db:migrate`

Run the tests
  `rake spec`

Start the Server
  `rails server`


Enviroment variables
-------------------------

  `S3_BUCKET_NAME`
  `AWS_ACCESS_KEY_ID`
  `AWS_SECRET_ACCESS_KEY`

