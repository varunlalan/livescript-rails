require 'sprockets'

module LiveScript
  module Rails
    class Railtie < ::Rails::Railtie
      config.app_generators.javascript_engine :ls

      initializer :register_livescript do |app|
        Sprockets.register_mime_type 'text/livescript', extensions: ['.ls', '.js.ls']
        Sprockets.register_transformer 'text/livescript', 'application/javascript', LiveScript::Rails::SprocketsProcessor
      end
    end
  end
end
