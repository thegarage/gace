require 'gace/view_helpers'
require 'gace/controller_helpers'

module Gace
  class Railtie < Rails::Railtie
    initializer 'gace.view_helpers' do |app|
      ActionView::Base.send :include, Gace::ViewHelpers
      ActionController::Base.send :include, Gace::ControllerHelpers
    end
  end
end
