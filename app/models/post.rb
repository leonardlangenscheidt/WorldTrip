class Post < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename"
  	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
  	belongs_to :stop

end
