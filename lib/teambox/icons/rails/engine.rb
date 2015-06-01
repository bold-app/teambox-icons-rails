module Teambox
  module Icons
    module Rails

      class Engine < ::Rails::Engine
        initializer "teambox_icons_rails.assets.precompile" do |app|
          app.config.assets.precompile += %w(teambox/*/*.png)
        end
      end

    end
  end
end

