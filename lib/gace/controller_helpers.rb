module Gace
  module ControllerHelpers
    extend ActiveSupport::Concern

    included do |base|
      base.send(:attr_reader, :experiment_key)
      base.helper_method :experiment_key
      base.helper_method :experiment_control?
    end

    private

    def experiment_control?
      experiment_key && !params[:gace_var]
    end

    def define_experiment(name, experiment_key)
      @experiment_key = experiment_key

      if params[:gace_var]
        variation_path = Rails.root.join('app/experiments', name.to_s, params[:gace_var])
        prepend_view_path(variation_path)
      end
    end
  end
end
