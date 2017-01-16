# contact-list

[![wercker status](https://app.wercker.com/status/ee03d99f23ec60a5d45acea4b246552b/s/master "wercker status")](https://app.wercker.com/project/byKey/ee03d99f23ec60a5d45acea4b246552b)

basic dockerized contact-list app

* System dependencies
	- ruby => 2.3.1
	- rails => 5.0.1

## Configuration


* Database : (postgreSQL)
	- contact_list_{$RAILS_ENV}

  - db create/migrate

    `bundle exec rake rake db:create RAILS_ENV=test`

    `bundle exec rake rake db:migrate RAILS_ENV=test`

