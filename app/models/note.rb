class Note < ActiveRecord::Base

  belongs_to :owner, class_name: 'User'

  validates :title, presence: true
  validates :upvotes, length: { minimum: 0 }
  
end
