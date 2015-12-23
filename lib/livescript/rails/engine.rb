require 'rails/engine'

module LiveScript
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :ls

      config.before_initialize do |app|
        if app.config.assets.enabled
          require 'livescript/rails/template_handler'
          require 'sprockets'
          Sprockets.register_engine '.ls', LiveScript::TiltTemplate
          Sprockets.register_engine '.livescript', LiveScript::TiltTemplate
        end
      end
    end
  end
end
