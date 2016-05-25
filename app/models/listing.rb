class Listing < ActiveRecord::Base
  #  has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
mount_uploader :picture, PictureUploader
validates_presence_of :picture

  validates :name, :description, :short_description, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
  belongs_to :user

  has_many :orders

end
