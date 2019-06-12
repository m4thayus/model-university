class Course < ApplicationRecord
    has_many :lectures
    has_many :students, through: :lectures
    belongs_to :professor
end
