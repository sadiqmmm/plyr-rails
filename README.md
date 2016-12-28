# Plyr::Rails
[![Gem Version](https://badge.fury.io/rb/plyr-rails.svg)](http://badge.fury.io/rb/plyr-rails)

plyr-rails gem is the integration of plyr.io javascript library for your Rails 4 and Rails 5 application.


Plyr.js a simple, accessible HTML5 media player.

source: https://github.com/Selz/plyr

Ruby gems url: https://rubygems.org/gems/plyr-rails

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'plyr-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install plyr-rails

Now you need to edit your `app/assets/javascripts/application.css` file and add the following line:

``` css
*= require plyr
```

Now you need to edit your `app/assets/javascripts/application.js` file and add the following line:

``` javascript
//= require plyr
```

## Usage

Here is the example working code to test with your Rails application.

Add this sample code to your `app/assets/javascripts/application.js` file

``` javascript
  $(document).ready(function(){  
    plyr.setup();	
  });

```

*Note:* Here i am using `gem 'jquery-turbolinks'` for using the jquery $(document).ready function 

Add this sample code to your template file like `index.html.erb`

``` html
<!-- Place somewhere in the <body> of your page -->
<div class="plyr">
    <div data-video-id="bTqVqk7FSmY" data-type="youtube"></div>
</div>
```

## Full documentation 

Read the plyr.io documentation here https://github.com/Selz/plyr

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sadiqmmm/plyr-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

