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
  
  
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/buyon_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

