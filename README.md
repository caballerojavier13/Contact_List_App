# Contact List - App

[![Build Status](http://138.68.74.4:8080/buildStatus/icon?job=Contact-List/Client_List_App)](http://138.68.74.4:8080/job/Contact-List/Client_List_App)

[![Tests Status](http://138.68.74.4:8080/buildStatus/icon?job=Contact-List/Run E2E Tests - Env_QA)](http://138.68.74.4:8080/job/Contact-List/job/Run%20E2E%20Tests%20-%20Env_QA/)

> Ruby on Rails example app to explain how to integrate docker with tests.



## System dependencies
- ruby => 2.3.1
- rails => 5.0.1

## Configuration


* Database : (postgreSQL)
	- contact_list_{$RAILS_ENV}

	- db create/migrate

    `bundle exec rake db:create RAILS_ENV=test`

    `bundle exec rake db:migrate RAILS_ENV=test`

