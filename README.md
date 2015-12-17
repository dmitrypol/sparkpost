# Sparkpost

Simple Ruby gem to integrate with Sparkpost https://www.sparkpost.com/api#/reference API .  Currently only supports transmissions method at https://api.sparkpost.com/api/v1/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sparkpost'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sparkpost

## Usage

Create regular ActionMailer like this:  mail(from: 'bar@foo.com, to: 'foo@bar.com', subject: 'test subject')

@spark_client = Sparkpost::API.new( ENV.fetch("SPARKPOST_API_KEY") )
@spark_client.send_message(mail)

Returns hash like this:  {"results"=>{"total_rejected_recipients"=>0, "total_accepted_recipients"=>1, "id"=>"30170142054007646"}

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dmitrypol/sparkpost.

## TODO
Integrate with other methods
Write tests
Create controller endpoints to handle webhooks posts