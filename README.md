# librato-statsd-ruby

Librato-based Ruby client for [StatsD](https://github.com/etsy/statsd).

# Installing

`gem "librato-statsd-ruby", '1.0.0.beta'`

You will also need to be running statsd with the Librato backend pluggin. See this [repo](https://github.com/librato/statsd-librato-backend) for more details.
  
# Getting Started

``` ruby
# Require librato-statsd-ruby
require 'librato-statsd-ruby'

# Initialize Statsd
$statsd = Statsd.new 'localhost', 8125

# Counters
$statsd.increment 'user.signups'

# Gauges
$statsd.gauge 'user.sessions', 10, sample_rate: 0.5

# Histogram
$statsd.histogram 'user.downloads', 5

# Time a block of code
$statsd.time 'user.create' do
  User.create(...)
end
```

# Tags

You can also submit tags with any metrics.

```ruby
$statsd.increment 'user.signups', tags: { country: 'US', addon_user: false }
```

Note: This is a beta feature and is still under development. If you are interested in trying this feature out, send an email to [support@librato.com](mailto:support@librato.com)


# Credit

This is a fork of the orignal Ruby statsd client library written by [Rein Henrichs](https://github.com/reinh/statsd) that adds support for Librato-specific features.

Copyright (c) 2011, 2012, 2013 Rein Henrichs. See LICENSE.txt for further details.
