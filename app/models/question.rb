class Question < ActiveRecord::Base
  validates :option1, :option2,  :length => {maximum: 300}
  validates :option1, :option2, :presence => true
  has_many :comments
  paginates_per 5

  def totalVotes
    return self.option1_votes + self.option2_votes
  end

  def average(votes)
    if self.totalVotes > 0
    return (votes.to_f/self.totalVotes.to_f * 100).round
    end
  end
end
