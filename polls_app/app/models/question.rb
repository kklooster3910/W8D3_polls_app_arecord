# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :integer          not null
#

class Question < ApplicationRecord
    
    validates :body, presence: true
    validates :poll_id, presence: true

    has_many :answer_choices,
        class_name: :AnswerChoice,
        primary_key: :id,
        foreign_key: :question_id
    
    belongs_to :owner_poll,
        class_name: :Poll,
        primary_key: :id,
        foreign_key: :poll_id
        
end
