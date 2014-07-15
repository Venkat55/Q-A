class Question < ActiveRecord::Base
	has_many :answers, :dependent => :destroy
  belongs_to :user

  searchable do
    text :question
  end
end
