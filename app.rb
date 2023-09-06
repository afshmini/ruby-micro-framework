require 'yaml'

require "./lib/boot" # 2
require "./lib/router" # 2

class App
  attr_reader :router

  def initialize
    @router = Router.new(ROUTES) # 3
  end

  def call(env)
    result = router.resolve(env) # 4
    [result.status, {}, result.content] # 5
  end

  def self.root
    File.dirname(__FILE__)
  end
end
