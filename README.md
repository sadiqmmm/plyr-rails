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

## Usage code updated to plyr version 3

Here is the example of working code with Jquery to test with your Rails application.

Add this sample code to your `app/assets/javascripts/application.js` file

Using with Javascript and turbolinks

``` javascript  

  document.addEventListener("turbolinks:load", function() {
    const player = new Plyr('#player');
  });

```

Using with Jquery required and turbolinks

``` javascript
  $(document).on("turbolinks:load", function() {
    new Plyr('#plyr');	
  });

```

Add this sample code to your template file like `index.html.erb`

``` html
<!-- Place somewhere in the <body> of your page -->
<div id="player" data-plyr-provider="youtube" data-plyr-embed-id="bTqVqk7FSmY"></div>
```

## More HTML examples

Plyr extends upon the standard HTML5 media elementmarkup so that's all you need for those types.

#### HTML5 Video

```html
<video poster="/path/to/poster.jpg" id="player" playsinline controls>
    <source src="/path/to/video.mp4" type="video/mp4">
    <source src="/path/to/video.webm" type="video/webm">

    <!-- Captions are optional -->
    <track kind="captions" label="English captions" src="/path/to/captions.vtt" srclang="en" default>
</video>
```

#### HTML5 Audio

```html
<audio id="player" controls>
    <source src="/path/to/audio.mp3" type="audio/mp3">
    <source src="/path/to/audio.ogg" type="audio/ogg">
</audio>
```

#### YouTube embed

```html
<div class="plyr__video-embed" id="player">
    <iframe src="https://www.youtube.com/embed/bTqVqk7FSmY?origin=https://plyr.io&amp;iv_load_policy=3&amp;modestbranding=1&amp;playsinline=1&amp;showinfo=0&amp;rel=0&amp;enablejsapi=1" allowfullscreen allowtransparency allow="autoplay"></iframe>
</div>
```

_Note_: The `plyr__video-embed` classname will make the player a responsive 16:9 (most common) iframe embed. When plyr itself kicks in, your custom `ratio` config option will be used.

Or the `<div>` non progressively enhanced method:

```html
<div id="player" data-plyr-provider="youtube" data-plyr-embed-id="bTqVqk7FSmY"></div>
```

_Note_: The `data-plyr-embed-id` can either be the video ID or URL for the media.

#### Vimeo embed

Much the same as YouTube above.

```html
<div class="plyr__video-embed" id="player">
    <iframe src="https://player.vimeo.com/video/76979871?loop=false&amp;byline=false&amp;portrait=false&amp;title=false&amp;speed=true&amp;transparent=0&amp;gesture=media" allowfullscreen allowtransparency allow="autoplay"></iframe>
</div>
```

Or the `<div>` non progressively enhanced method:

```html
<div id="player" data-plyr-provider="vimeo" data-plyr-embed-id="76979871"></div>
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

