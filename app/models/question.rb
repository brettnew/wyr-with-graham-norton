class Question < ActiveRecord::Base
  validates :option1, :option2,  :length => {maximum: 300}
  validates :option1, :option2, :presence => true

  def totalVotes
    return self.option1_votes + self.option2_votes
  end
end
