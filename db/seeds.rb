# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

who = Professor.create(name: "Dr. Who", field: "Time Travel")
rose = Student.create(name: "Rose Tyler", year: 2005, major: "Companionship")
history = Course.create(
    name: "History of the Earth", 
    description: "Earth from creation to destrucion", 
    time: "9:30", 
    professor_id: who.id
)
episode2 = Lecture.create(
    student_id: rose.id,
    course_id: history.id
)