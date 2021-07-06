require_relative 'employee'
class Manager < Employee 
    attr_reader :employees 
    def initialize(name, title, salary, boss, employees)
        super(name, title, salary, boss)
        @employees = employees
    end
    
    def bonus(multiplier)
        # return salary if employees.nil?
        bonus = 0
        employees.each do |employee|
            if employee.is_a?(Employee)
                bonus += employee.salary
                # p employee.salary
            else
                bonus += employee.bonus(multiplier)
            end
        end
        bonus
    end

end

david = Employee.new("David", "TA", 10000, "Darren") 
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
darren = Manager.new("Darren", "TA Manager", 78000, "Ned", [david, shawna])
ned = Manager.new("Ned", "Founder", 1000000, nil, [darren])

p ned.bonus(5) #500_000
p darren.bonus(4) #88_000
p david.bonus(3) #30_000
