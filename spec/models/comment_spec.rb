require 'rails_helper'

describe Comment do
  it { should validate_presence_of :username }
  it { should validate_presence_of :content }
  it { should validate_length_of(:username).is_at_most(300) }
  it { should validate_length_of(:content).is_at_most(300) }
  it { should belong_to :question }
end
