class ChangeQuestionAndAnswerType < ActiveRecord::Migration
  def change
  	change_column :answers, :answer, :text
  	change_column :questions, :question, :text
  end
end
