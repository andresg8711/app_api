class Tutorship < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :trysts
end
