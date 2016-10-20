require 'spec_helper'

describe BuyonApi do
  it 'has a version number' do
    expect(BuyonApi::VERSION).not_to be nil
  end

  it 'check default configuration' do
    expect(BuyonApi.configuration.url_prefix).to eq("https://buyon.ru/clients_api/")
  end

  it 'set login and password' do
   BuyonApi.configure do |config|
     config.login = "test"
     config.password = "password_test"
   end

    expect(BuyonApi.configuration.login).to eq("test")
    expect(BuyonApi.configuration.password).to eq("password_test")
  end
end
