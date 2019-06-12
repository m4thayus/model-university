class Student < ApplicationRecord
    has_many :lectures
    has_many :courses, through: :lectures
    has_many :professors, through: :courses
end
