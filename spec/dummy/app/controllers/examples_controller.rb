class ExamplesController < ApplicationController
  def show
    define_experiment :test_pricing, '28391929-0'
  end
end
