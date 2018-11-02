#!/usr/bin/ruby

class Employee
    attr_reader :name, :salary

    def name=(name)
        if name == ""
            raise "Name cannot be blank!"
        end
        @name = name
    end

    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} is not valid!"
        end
        @salary = salary
    end

    def initialize(name = "Anonymous", salary = 0.0)
        self.name = name
        self.salary = salary
    end

    def print_pay_stub
        puts "Name: #{name}"
        pay_for_period = (salary / 365.0) * 14
        puts format("Pay This Period: $%.2f", pay_for_period)
    end

end

amy = Employee.new("Amy Blake", 50000.0)
amy.print_pay_stub

