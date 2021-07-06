class Employee 
    attr_reader :name, :title, :salary, :boss 
    def initialize(name, title, salary, boss)
        @name = name 
        @title = title 
        @salary = salary 
        @boss = boss 
    end
    def bonus(multiplier)
        salary * multiplier
    end
    # def sum_salary
    #     @salary
    # end
end