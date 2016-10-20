module BuyonApi
  class Client

    def initialize
      @conn = BuyonApi::Api.call
    end

    def method_missing(m, *args, &block)
      require 'pry'; binding.pry
      puts "There's no method called #{m} here -- please try again."
    end

  end
end
