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

    def print_pay_stub
        puts "Name: #{@name}"
        pay_for_period = (@salary / 365.0) * 14
        puts "Pay This Period: $#{pay_for_period}"
    end

end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000
amy.print_pay_stub

