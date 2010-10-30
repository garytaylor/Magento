require "rails"

module Magento
  class Engine < Rails::Engine
    initializer 'magento' do |config|
      XMLRPC::Config::ENABLE_NIL_PARSER=true
      Magento::Configuration.config_path=::File.join(Rails.root,'/config/magento.yml')
    end
  end
end
