require 'rails_helper'

RSpec.describe Shoe, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_numericality_of(:price).is_greater_than(0) }
  end

  context 'associations' do
    it { is_expected.to have_many :photos }
  end  
end