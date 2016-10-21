# BuyonApi

Ruby gem for Buyon API (http://docs.buyon.ru/api).
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'buyon_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install buyon_api

## Usage

Configure gem credentials 

```ruby
 BuyonApi.configure do |config|
    config.login = ENV['BUYON_LOGIN']
    config.password = ENV['BUYON_PASSWORD']
 end
```

Make request

```ruby
  conn = BuyonApi::Client.new
  result = conn.login(password: "password", login: "test@mail.ru")
  # => #<OpenStruct token="2bc053b4ce789df89casdasdeq2dqwd">
  result.toke
  # => "2bc053b4ce789df89casdasdeq2dqwd"
  result[:token]
  # => "2bc053b4ce789df89casdasdeq2dqwd"
  subscribe = conn.subscribe(token: result.token, email: "test@buyon.ru")
  # => #<OpenStruct success=true>
  subscribe.to_h
  # => {:success=>true}
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

