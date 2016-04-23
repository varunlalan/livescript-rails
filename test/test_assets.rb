require 'action_controller/railtie'
require 'sprockets/railtie'

class TestApp < Rails::Application
end

class AssetsTest < ActiveSupport::TestCase
  def setup
    FileUtils.mkdir_p tmp_path

    @app = TestApp.new

    @app.config.eager_load = false
    @app.config.active_support.deprecation = :stderr
    @app.config.assets.configure do |env|
      env.cache = ActiveSupport::Cache.lookup_store(:memory_store)
    end
    @app.config.assets.paths << File.expand_path('../files/assets', __FILE__)
    @app.paths['log'] = "#{tmp_path}/log/test.log"
    @app.initialize!
  end

  def teardown
    FileUtils.rm_rf tmp_path
  end

  def tmp_path
    "#{File.expand_path('../tmp', __FILE__)}"
  end

  def assets
    @app.assets
  end

  test 'LiveScript is compiled to javascript correctlly' do
    refute_nil assets['javascripts/hello.js']
    assert_match "alert('hello')", assets['javascripts/hello.js'].source
  end
end
