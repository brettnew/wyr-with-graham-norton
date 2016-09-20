class Comment < ActiveRecord::Base
  validates :username, :content, :presence => true
  validates :username, :content, :length => {maximum: 300}
  belongs_to :question
end
