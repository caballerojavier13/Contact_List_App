# contact-list

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

