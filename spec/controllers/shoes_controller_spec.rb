require 'rails_helper'

RSpec.describe ShoesController, type: :controller do
  describe '#index' do
    let!(:shoes) { create_list(:shoe, 2)}

    it 'get shoes list' do
      get :index
      expect(assigns(:shoes).size).to eq shoes.size
    end
  end
end