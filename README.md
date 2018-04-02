# Contact List - App
[![wercker status](https://app.wercker.com/status/8911385c5cdbc691a9588832b56a7640/s/master "wercker status")](https://app.wercker.com/project/byKey/8911385c5cdbc691a9588832b56a7640)


> Ruby on Rails example app to explain how to integrate docker with tests.



* System dependencies
	- ruby => 2.3.1
	- rails => 5.0.1

## Configuration


* Database : (postgreSQL)
	- contact_list_{$RAILS_ENV}

  - db create/migrate

    `bundle exec rake db:create RAILS_ENV=test`

    `bundle exec rake db:migrate RAILS_ENV=test`

