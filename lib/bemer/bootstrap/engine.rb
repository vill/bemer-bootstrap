# frozen_string_literal: true

module Bemer
  module Bootstrap
    class Engine < ::Rails::Engine
      path = root.join('app', 'bemer_components').to_s

      initializer 'bemer-bootstrap.ignore_autoload_path' do
        next unless defined?(::Zeitwerk) && Rails.autoloaders.zeitwerk_enabled?

        Rails.autoloaders.main.ignore(path)
      end

      initializer 'bemer-bootstrap.add_path' do
        Bemer.paths << path
      end

      # initializer 'bemer-bootstrap.add_asset_path', before: 'bemer.prepend_asset_paths' do
      #   Bemer.asset_paths << path
      # end
    end
  end
end
