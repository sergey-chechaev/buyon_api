module BuyonApi
  class Client

    def initialize
      @conn = BuyonApi::Api.call
    end

    def method_missing(m, args, &block)
      result = @conn.post do |req|
        req.url m.to_s
        req.headers['Content-Type'] = 'application/json'
        req.params = args
      end

      obj_hash JSON.parse(result.body)
    end

    def obj_hash(result)
      OpenStruct.new(result)
    end

  end
end
