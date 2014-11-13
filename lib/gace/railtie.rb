require 'gace/view_helpers'
require 'gace/controller_helpers'

module Gace
  class Railtie < Rails::Railtie
    initializer 'gace.view_helpers' do |app|
      ActionController::Base.send :include, Gace::ControllerHelpers
      ActionController::Base.helper Gace::ViewHelpers
    end
  end
end
