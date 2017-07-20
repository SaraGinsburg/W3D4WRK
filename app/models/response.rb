class Response < ActiveRecord::Base
  validates :user_id,  presence: true, uniqueness: true
  validates :answer_choice_id, presence: true, uniqueness: true

  belongs_to :answer_choice,
  foreign_key: :answer_choice_id,
  primary_key: :id,
  class_name: "AnswerChoice"



  belongs_to :user,
  foreign_key: :user_id,
  primary_key: :id,
  class_name: "User"

  has_one :question,
  through: :answer_choice,
  source: :question

def respondent_already_answered?
    sibling_responses.include?(self)
end

  def sibling_responses
    self.question.responses
  end

end
