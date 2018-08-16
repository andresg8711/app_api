class Course < ApplicationRecord
  belongs_to :user

  
  has_many :tutorships
  has_many :users, through: :tutorships

end
