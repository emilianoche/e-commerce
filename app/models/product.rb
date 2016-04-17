class Product < ActiveRecord::Base
	has_and_belongs_to_many :brands
	has_and_belongs_to_many :categories
	has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	has_attached_file :cover
end
