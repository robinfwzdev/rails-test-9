require 'rails_helper'

RSpec.describe Photo, type: :model do
  context 'validations' do
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

  context 'associations' do
    it { is_expected.to belong_to :shoe }
  end
end