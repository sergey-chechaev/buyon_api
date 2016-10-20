require 'faraday'
require 'json'
require "buyon_api/version"
require "buyon_api/configuration"
require "buyon_api/api"
require "buyon_api/client"

module BuyonApi
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
