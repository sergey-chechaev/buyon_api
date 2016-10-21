require "spec_helper"

describe BuyonApi::Client do
  context "login" do
    it "return token" do
      conn = BuyonApi::Client.new
      # you can uncomment bindeing.pry and try
      # result = conn.login(password: "password", login: "test@mail.ru")
      # require 'pry'; binding.pry
    end
  end
end
