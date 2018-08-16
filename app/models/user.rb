class User < ApplicationRecord
  belongs_to :city
  has_many :habilities
  has_many :trysts

  has_many :tutorships
  has_many :courses, through: :tutorships
  
  has_many :userc, class_name: :Comment, foreign_key: "userc_id"
  has_many :userr, class_name: :Comment, foreign_key: "userr_id"
end
