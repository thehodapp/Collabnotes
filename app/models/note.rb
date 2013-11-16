class Note < ActiveRecord::Base

  belongs_to :owner, class_name: 'User'
  belongs_to :course

  validates :title, presence: true
  validates :upvotes, length: { minimum: 0 }

end
