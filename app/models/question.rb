class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :votes
  validates_presence_of :question
  # Remember to create a migration!
end
