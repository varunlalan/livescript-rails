module LiveScript
  module Rails
    module SprocketsProcessor
      def self.cache_key
        @cache_key ||= "#{name}:#{LiveScript::Source::VERSION}:#{LiveScript::VERSION}:#{LiveScript::Rails::VERSION}".freeze
      end

      def self.call(input)
        data = input[:data]
        options = {
          bare: true,
          header: false,
          map: 'linked-src',
          filename: input[:source_path] || input[:filename],
        }.merge(::Rails.application.config.assets.livescript || {})

        result = input[:cache].fetch([self.cache_key, data]) do
          LiveScript.compile(data, options)
        end

        # when map: none, result is String; otherwise, result is Hash
        if result.kind_of? Hash
          {
            data: result['code'],
            map: result['map'],
          }
        else
          result
        end
      end
    end
  end
end
