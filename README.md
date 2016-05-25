# Plyr::Rails

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/plyr/rails`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'plyr-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install plyr-rails

Now you need to edit your `app/assets/javascripts/application.js` file and add the following line:
``` javascript
//= require plyr
```

Now you need to edit your `app/assets/stylesheets/application.css` file and add the following line:
``` css
*= require plyr
```

## Usage

To load and intialize the player.

You need to add this to your `app/assets/javascripts/application.js` file and add the following line:
``` javascript
$(document).ready(function(){
	plyr.setup();	
});
```

Add html code to your any view file `app/views/blogs/index.erb` file and add the following code:
``` html
<div class="plyr">
    <div data-video-id="bTqVqk7FSmY" data-type="youtube"></div>
</div>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/plyr-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

