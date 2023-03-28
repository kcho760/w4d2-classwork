class Employee 

    # include Bonus 

    def initialize(name, title, salary, boss)
        @name = name 
        @title = title 
        @salary = salary 
        @boss = boss 

    end 

    # def bonus(multiplier)
    #     bonus = @salary * multiplier 
    # end 

end 

class Manager < Employee

    # include Bonus 

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @assigned_employees = []
    end 

    def manager_bonus
        salary_sum = 0
        @assigned_employees.each do |employee|
           salary_sum += employee.salary 
        end 
        salary_sum.bonus(multiplier) 
    end 

end 

# module Bonus 
#     def bonus(multiplier)
#         bonus = @salary * multiplier 
#     end 

# end 


dave = Employee.new("dave", "TA",10,000,"Ned",)
ned = Employee.new("ned", "TA",10,000,"Ned",)
darren = Manager.new("darren", "TA-manager",10,000,"jules",)
jules = Manager.new("jules", "founder",10,000)

# dave.bonus(5)
# ned.bonus(5)
# darrren.bonus(5)
# jules.bonus(5)
