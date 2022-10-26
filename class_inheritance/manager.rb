require_relative 'employee'

class Manager < Employee

    attr_reader :name, :title, :salary, :boss
    attr_accessor :employees

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def bonus(multiplier)

        total_salary = @employees.inject(0) { |acc, worker| acc += worker.salary } 

        bonus = total_salary * multiplier
    end

end
