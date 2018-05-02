# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

#run Rails.application

run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['get rack\'d']] }
