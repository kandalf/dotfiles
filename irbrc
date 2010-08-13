require 'rubygems'
require 'wirble'
require 'interactive_editor'

Wirble.init
Wirble.colorize

require 'pp'

if ENV.include?('RAILS_ENV')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
  puts "Logging to STDOUT"
  require 'hirb'
  Hirb.enable
end

alias q exit
