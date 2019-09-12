require_relative './config/environment'

require './config/environment'

if ActiveRecord::Migrartor.needs_migration? 
  raise "Migrations are pending. Run 'rake db:migrate' to resolve this issue"
end 

use Rack::MethodOverride 
run ApplicationController 