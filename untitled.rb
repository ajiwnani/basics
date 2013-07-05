class Employee
	attr_accessor :first_name , :last_name

	def full_name
		"#{@first_name} #{@last_name}"
	end

	def email
		"#{@first_name}.#{last_name}@oracle.com"
	end
end


class Engineer < Employee
end

class Designer < Employee
	def email
		"#{@first_name}.#{last_name}@oracle-designer.com"
	end
end

def initialize(first_name: first_name, last_name: last_name)
@first_name= first_name
@last_name= last_name