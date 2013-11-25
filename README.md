# further [![Gem Version](https://badge.fury.io/rb/further.png)](http://badge.fury.io/rb/further)

This gem provides a simple and extremely flexible way to add extra data into your models
without adding new column for that.


## Installation

Install the latest stable release:

	[sudo] gem install further

In Rails, add it to your Gemfile:

```ruby
gem 'further'
```

Finally, restart the server to apply the changes.

Note that further is work in Rails 3+ and Ruby 1.9+

## Getting Started

Start off by generating an uploader:

	rails generate further model

This should give you further_information model and the migrate file.

	app/models/further_information.rb
    db/migrates/%timestamp%_create_further_information.rb


Then rake db:migrate

    rake db:migrate

Open your model file that you want to use further with:

```ruby
class Site < ActiveRecord::Base
  # you can choose any name
  further :info
end
```

Now you can add extra data in site model

```ruby
s = Site.create info: {alexa_rank: 41253, last_updated: DateTime.now}
s.info[:alexa_rank]  # => 41253
 # you can add more info after you create the object
s.info page_rank: 3
s.info[:page_rank]  # => 3
s.info  # => {:alexa_rank=>41253, :last_updated=>Mon, 25 Nov 2013 18:43:22 +0300, :page_rank=>3}
```


