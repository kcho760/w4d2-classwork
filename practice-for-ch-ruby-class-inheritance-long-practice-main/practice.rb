class Employee 

    attr_accessor :salary

    def initialize(name, title, salary, boss)
        @name = name 
        @title = title 
        @salary = salary 
        @boss = boss 

    end 

    def bonus(multiplier)
        salary_sum = 0
        if !self.is_a?(Manager)
            return @salary * multiplier
        else
            @assigned_employees.each do |employee|
                salary_sum += employee.salary
        end
        return salary_sum * multiplier
        end 
    end 
end 

class Manager < Employee

    def initialize(name, title, salary, boss,assigned_employees)
        super(name, title, salary, boss)
        @assigned_employees = assigned_employees
    end 


end 



dave = Employee.new("dave", "TA",10_000,"Ned",)
ned = Employee.new("ned", "TA",10_000,"Ned",)
darren = Manager.new("darren", "TA-manager",10_000,"jules",[dave,ned])
jules = Manager.new("jules", "founder",10_000, nil,[darren,ned,dave])
