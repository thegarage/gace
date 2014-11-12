require 'rails_helper'

RSpec.describe ExamplesController, :type => :controller do
  describe '#show' do
    context 'when missing gace_var parameter' do
      before do
        get :show
      end
      it { is_expected.to respond_with :ok }
      it 'includes the google experiments javascript' do
        expect(response.body).to include('function utmx_section')
      end
    end
    context 'when gace_var param is one of the variations' do
      before do
        get :show, gace_var: 'expensive'
      end
      it { is_expected.to respond_with :ok }
      it 'renders experimental template' do
        expect(response.body).to include 'This is the expensive variation template'
      end
      it 'does not include the google experiments javascript' do
        expect(response.body).to_not include('function utmx_section')
      end
    end
  end
end
