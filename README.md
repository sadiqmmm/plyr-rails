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
    Plyr('#plyr');	
  });

```

Using with turbolinks only

``` javascript
  $(document).on("turbolinks:load", function() {
    Plyr('#plyr');	
  });

```

Add this sample code to your template file like `index.html.erb`

``` html
<!-- Place somewhere in the <body> of your page -->
<div class="plyr">
    <div data-video-id="bTqVqk7FSmY" data-type="youtube"></div>
</div>
```

## More HTML examples
Plyr extends upon the standard HTML5 markup so that's all you need for those types.


### HTML5 Video

``` html
<video poster="/path/to/poster.jpg" controls>
  <source src="/path/to/video.mp4" type="video/mp4">
  <source src="/path/to/video.webm" type="video/webm">
  <!-- Captions are optional -->
  <track kind="captions" label="English captions" src="/path/to/captions.vtt" srclang="en" default>
</video>
```
### HTML5 Audio

``` html
<audio controls>
  <source src="/path/to/audio.mp3" type="audio/mp3">
  <source src="/path/to/audio.ogg" type="audio/ogg">
</audio>
```
For YouTube and Vimeo, Plyr uses the standard YouTube API markup (an empty `<div>`):

### YouTube embed

``` html
<div data-type="youtube" data-video-id="bTqVqk7FSmY"></div>
```

Note: data-video-id value can now be the ID or URL for the video. This attribute name will change in a future release to reflect this change.

### Vimeo embed

``` html
<div data-type="vimeo" data-video-id="143418951"></div>
```
Note: data-video-id value can now be the ID or URL for the video. This attribute name will change in a future release to reflect this change.

## Full documentation 

Read the plyr.io documentation here https://github.com/Selz/plyr

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sadiqmmm/plyr-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

