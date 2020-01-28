require_relative "./pokemon/version"
require 'pry'
require 'httparty'

module Pokemon
  class Error < StandardError; end
  # Your code goes here...
end

require_relative './pokemon'
require_relative './cli'
require_relative './api'

#starting point of require is top level dir
#starting point of require_relative is the file its on
#need to consolidate all requires here for when we run app so it has access to everything
