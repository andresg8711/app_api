class Course < ApplicationRecord
    has_many :tutorships
    has_many :users, through: :tutorships
end
