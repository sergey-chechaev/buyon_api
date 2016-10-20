$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'buyon_api'

RSpec.configure do |config|
  config.before(:all) do
    BuyonApi.configure do |config|
      config.login = ENV["BUYON_LOGIN"]
      config.password = ENV["BUYON_PASSWORD"]
    end
  end
end

