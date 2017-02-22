require 'rack'
require_relative 'app'


app = App

Rack::Handler::WEBrick.run app
