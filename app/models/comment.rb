class Comment < ActiveRecord::Base
	belongs_to :stop
	validates :name, presence: true
end
