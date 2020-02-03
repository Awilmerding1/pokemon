require_relative "./pokemon/version"
require 'pry'
require 'httparty'

require_relative './pokemon'
require_relative './pokemon_controller'
require_relative './api'


module Pokemon
  class Error < StandardError; end
  # Your code goes here...
end



#starting point of require is top level dir
#starting point of require_relative is the file its on
#need to consolidate all requires here for when we run app so it has access to everything
