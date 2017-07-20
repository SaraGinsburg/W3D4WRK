class Poll < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :user_id, presence: true, uniqueness: true


   belongs_to :author,
   foreign_key: :user_id,
   primary_key: :id,
   class_name: "User"

   has_many :questions,
   foreign_key: :poll_id,
   primary_key: :id,
   class_name: "Question"

end
