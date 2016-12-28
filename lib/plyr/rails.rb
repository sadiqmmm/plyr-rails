require "plyr/rails/version"

module Plyr
  module Rails
    class Engine < ::Rails::Engine
        initializer :append_dependent_assets_path, :group => :all do |app|
          app.config.assets.paths += %w( images )

          app.config.assets.precompile += %w( plyr.css )
          app.config.assets.precompile += %w( plyr.js )
          app.config.assets.precompile += %w( plyr.svg )          
        end  
      end
  end
end
