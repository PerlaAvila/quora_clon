class CreateAnswerVotes < ActiveRecord::Migration
  def change
    create_table :answer_votes do |t|
      t.belongs_to :user
      t.belongs_to :answer
    end
  end
end
