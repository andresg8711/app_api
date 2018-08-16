class Comment < ApplicationRecord
  belongs_to :userr, class_name: :User
  belongs_to :userc, class_name: :User
end
