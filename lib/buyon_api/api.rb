require "buyon_api/configuration"

module BuyonApi
  class Api
    class << self
      def call
        connection(url: BuyonApi.configuration.url_prefix)
      end

      def connection(url:)
        Faraday.new(url) do |builder|
          builder.request  :url_encoded
          builder.response :logger
          builder.adapter  Faraday.default_adapter
        end
      end
    end
  end
end
