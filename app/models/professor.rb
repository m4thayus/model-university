class Professor < ApplicationRecord
    has_many :courses
    has_many :lectures, through: :courses
    has_many :students, through: :lectures
end
