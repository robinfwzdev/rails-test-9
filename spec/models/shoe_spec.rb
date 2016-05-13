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
end