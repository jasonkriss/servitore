# Servitore

Bare-boned service objects.

## Installation

Add this line to your application's Gemfile:

    gem 'servitore'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install servitore

## Usage

```ruby
class Registration
  include Servitore::Service

  def call
    User.create!(user_params)
  end

  private
  def user_params
    params.slice(:name, :email, :password)
  end
end
```

## Contributing

1. Fork it ( http://github.com/jasonkriss/servitore/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
