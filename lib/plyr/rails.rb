require "plyr/rails/version"

module Plyr
  module Rails
    class Engine < ::Rails::Engine
        initializer :append_dependent_assets_path, :group => :all do |app|
          app.config.assets.paths += %w( sprite )        

          app.config.assets.precompile += %w( plyr-airplay.svg )
          app.config.assets.precompile += %w( plyr-captions-off.svg )
          app.config.assets.precompile += %w( plyr-captions-on.svg )
          app.config.assets.precompile += %w( plyr-download.svg )
          app.config.assets.precompile += %w( plyr-enter-fullscreen.svg )
          app.config.assets.precompile += %w( plyr-exit-fullscreen.svg )
          app.config.assets.precompile += %w( plyr-fast-forward.svg )
          app.config.assets.precompile += %w( plyr-logo-vimeo.svg )
          app.config.assets.precompile += %w( plyr-logo-youtube.svg )
          app.config.assets.precompile += %w( plyr-muted.svg )
          app.config.assets.precompile += %w( plyr-pause.svg )
          app.config.assets.precompile += %w( plyr-pip.svg )
          app.config.assets.precompile += %w( plyr-play.svg )
          app.config.assets.precompile += %w( plyr-restart.svg )
          app.config.assets.precompile += %w( plyr-rewind.svg )
          app.config.assets.precompile += %w( plyr-settings.svg )
          app.config.assets.precompile += %w( plyr-volume.svg )          
        end  
      end
  end
end
