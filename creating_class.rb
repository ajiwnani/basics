 How about using a class
class Student
 attr_accessor :name, :major, :course, :grade
end

def grade_status(student)
 if student.grade == "F"
   "failed"
 elsif student.major == student.course && student.grade >= "C"
   "failed"
 else
   "passed"
 end
end

jimmy = Student.new
jimmy.name = "Jimmy Mazzy"
jimmy.major = "Math"
jimmy.course = "Math"
jimmy.grade = "A"

pepe = Student.new
pepe.name = "Pepe Phaenagrotis"
pepe.major = "Music"
pepe.course = "Math"
pepe.grade = "C"

edward = Student.new
edward.name = "Edward Ellis"
edward.major = "Math"
edward.course = "Math"
edward.grade = "C"


puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"
puts "#{pepe.name} has #{grade_status(pepe)} #{pepe.course}"
puts "#{edward.name} has #{grade_status(edward)} #{edward.course}"
