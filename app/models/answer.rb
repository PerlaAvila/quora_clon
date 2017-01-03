class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :votes

  validates :answer, presence: {message: "Must be present"}, uniqueness: true
  # Remember to create a migration!
end
