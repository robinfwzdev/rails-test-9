class Photo < ActiveRecord::Base
  belongs_to :shoe

  has_attached_file :picture,
    styles: { thumb: '370x200>' },
    default_url: "photo/missing.png"
  validates_attachment :picture,
    content_type: {content_type: /\Aimage\/.*\Z/},
    size: { in: 0..5.megabytes, message: 'Photo size too large. Please limit to 5 mbs.' }

  validates_attachment_presence :picture, presence: true
end