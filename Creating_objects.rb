#Why use Objects
#TIME: 30 min

# #These are 3 hashes that have the same fields and share a similar behavior
 jimmy = {}
 jimmy[:name] = "Jimmy Mazzy"
 jimmy[:major] = "Math"
 jimmy[:course] = "Math"
 jimmy[:grade]= "A"
#
 pepe = {}
 pepe[:name]= "Pepe Phaenagrotis"
 pepe[:major] = "Music"
 pepe[:course] = "Math"
 pepe[:grade] = "C"
#
 edward = {}
 edward[:name] = "Edward Ellis"
 edward[:major] = "Math"
 edward[:course] = "Math"
 edward[:grade] = "C"
#
def grade_status(student)
  if student[:grade] == "F"
    "failed"
  elsif student[:major] == student[:course] && student[:grade] >= "C"
    "failed"
  else
    "passed"
  end
end

puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"
puts "#{pepe[:name]} has #{grade_status(pepe)} #{pepe[:course]}"
puts "#{edward[:name]} has #{grade_status(edward)} #{edward[:course]}"

