class CreateQuestionVotes < ActiveRecord::Migration
  def change
    create_table :question_votes do |t|
      t.belongs_to :user
      t.belongs_to :question
    end
  end
end
