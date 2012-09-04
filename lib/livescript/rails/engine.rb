require 'rails/engine'

module LiveScript
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :ls
    end
  end
end
