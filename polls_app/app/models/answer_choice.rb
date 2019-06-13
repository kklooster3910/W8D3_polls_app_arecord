# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  question_id :integer          not null
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord

    belongs_to :question,
        class_name: :Question,
        primary_key: :id,
        forgrin_key: :question_id

       

end
