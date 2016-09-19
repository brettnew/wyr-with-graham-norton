class ChangeVotes < ActiveRecord::Migration[5.0]
  def change
    change_column :questions, :option1_votes, :integer, :default => 0
    change_column :questions, :option2_votes, :integer, :default => 0
  end
end
