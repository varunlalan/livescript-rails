require 'rails/engine'

module LiveScript
  module Rails
    class Engine < ::Rails::Engine
      if ::Rails.version.to_f >= 3.1
        config.app_generators.template_engine :ls
      else
        config.generators.template_engine :ls
      end

      initializer :register_livescript do |app|
        app.assets.register_engine '.ls', TiltTemplate
        app.assets.register_engine '.livescript', TiltTemplate
      end
    end
  end
end
