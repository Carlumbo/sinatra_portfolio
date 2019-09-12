require 'bundler'

Bundler.require 

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :datbase => 'db/development.sqlite'
  )
  
  require_all 'app'