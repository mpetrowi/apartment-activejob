# Apartment::Activejob

ActiveJob support for Apartment with Que support

All credit goes to the original gem [apartment-activejob](https://github.com/influitive/apartment-activejob)

I have only added support for using this with [Que](https://github.com/chanks/que).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apartment-activejob-que'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install apartment-activejob-que

## Usage

Create a new initialization file active_job.rb in your project with the contents

```ruby
require "apartment/active_job"

class ActiveJob::Base
  include Apartment::ActiveJob
end
```

You will need to restart your rails server for this to take effect.

Enqueuing jobs will automatically place them in the public tenant. When the job is worked, it will be worked on the tenant it was created on.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/apartment-activejob/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
