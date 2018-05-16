# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
#require_relative 'app/hello_world.rb'
#use 'HelloWorld'
run Rails.application

#run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['get rack\'d']] }
#run HelloWorld
