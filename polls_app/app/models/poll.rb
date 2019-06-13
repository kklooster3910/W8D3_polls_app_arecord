# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#

class Poll < ApplicationRecord

     validates :title, presence: true, uniqueness: true
     validates :author_id, presence: true

    belongs_to :poll_author,
        class_name: :User,
        primary_key: :id,
        foreign_key: :author_id;     
        
    has_many :questions,
        class_name: :Question,
        primary_key: :id,
        foreign_key: :poll_id

end
