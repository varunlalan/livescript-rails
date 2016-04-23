# LiveScript-Rails

LiveScript adapter for the Rails asset pipeline.

Depends on [Roonin-mx/livescript-ruby](https://github.com/Roonin-mx/livescript-ruby) to compile LiveScript to javascript.

## Installation

Add the following lines to your `Gemfile`:

```
gem 'livescript-rails'
```

If you are precompiling your assets (with rake assets:precompile) before run your application in production, you might want add it to the assets group to prevent the gem being required in the production environment.

```
group :assets do
  gem 'livescript-rails'
end
```

## Configuration

You can set compile options in `config/initializers/assets.rb`:

```
# These are default options. User set options will override default options
Rails.application.config.assets.livescript = {
  bare: true,
  header: false,
  map: 'linked-src',
}
```

See [Roonin-mx/livescript-ruby](https://github.com/Roonin-mx/livescript-ruby) for more options.

## License

MIT
