class Product < ActiveRecord::Base
  belongs_to :category
  
  acts_as_taggable_on :tags
  
  has_attached_file :picture,
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.png"
    
    # Validate presence
    validates :picture, presence: true
    validates_attachment :picture, 
        presence: true,
        content_type: { content_type: ["image/jpeg","image/png", "image/gif"] }

end
