require 'rails_helper'

RSpec.describe Shoe, type: :model do
  context 'associations' do
    it { is_expected.to belong_to :brand }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :sku }
    it { is_expected.to validate_numericality_of(:price).is_greater_than(0) }
    it do
      is_expected.to validate_attachment_content_type(:picture)
        .allowing('image/png', 'image/gif')
        .rejecting('text/plain', 'text/xml')
    end
    it do
      is_expected.to validate_attachment_size(:picture)
        .less_than(5.megabytes)
    end
  end

  describe 'find_shoes_by_condition' do
    let!(:adias) { create(:brand) }
    let!(:nike)  { create(:brand) }
    let!(:nike_flex)  { create(:shoe, price: 20) }
    let!(:nike_free)  { create(:shoe, price: 50) }

    describe '#find_by_brands' do
      let!(:nike_small)  { create(:shoe, brand_id: nike.id) }
      let!(:nike_medium) { create(:shoe, brand_id: nike.id) }
      let!(:adias_small)  { create(:shoe, brand_id: adias.id) }
      let!(:adias_medium) { create(:shoe, brand_id: adias.id) }

      it 'find shoes by brands' do
        results = Shoe.find_by_brands(nike.id)
        expect(results).to include nike_small
        expect(results).to include nike_medium
        expect(results).not_to include adias_medium
      end
    end

    describe '#find_by_min_price' do
      let!(:nike_flex)  { create(:shoe, price: 20) }
      let!(:nike_free)  { create(:shoe, price: 50) }

      it 'find shoes by brands' do
        results = Shoe.find_by_min_price(50)
        expect(results).to include nike_free
        expect(results).not_to include nike_flex
      end
    end

    describe '#find_by_max_price' do
      it 'find shoes by brands' do
        results = Shoe.find_by_max_price(20)
        expect(results).to include nike_flex
        expect(results).not_to include nike_free
      end
    end
  end
end