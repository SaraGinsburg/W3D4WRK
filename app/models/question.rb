class Question < ActiveRecord::Base
  validates :text, presence: true, uniqueness: true
  validates :pull_id, presence: true

  has_many :answer_choices,
  foreign_key: :question_id,
  primary_key: :id,
  class_name: "AnswerChoice"

  belongs_to :poll,
  foreign_key: :question_id,
  primary_key: :id,
  class_name: "Poll"

  has_many :responses,
  through: :answer_choices,
  source: :responses
  
end
