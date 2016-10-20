module BuyonApi
  class Configuration
    attr_accessor :login, :password, :url_prefix

    def initialize
      @url_prefix = "https://buyon.ru/clients_api/"
    end
  end
end
