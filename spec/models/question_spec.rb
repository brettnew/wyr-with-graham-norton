require 'rails_helper'

describe Question do
  it { should validate_presence_of :option1 }
  it { should validate_presence_of :option2 }
  it { should validate_length_of(:option1).is_at_most(300) }
  it { should validate_length_of(:option2).is_at_most(300) }
  it { should have_many :comments }
end
