#!/usr/bin/ruby

class Employee
    attr_reader :name

    def name=(name)
        if name == ""
            raise "Name cannot be blank!"
        end
        @name = name
    end

    def print_name
        puts "Name: #{name}"
    end

    def initialize(name = "Anonymous")
        self.name = name
    end

end

class SalariedEmployee < Employee
    attr_reader :salary

    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} is not valid!"
        end
        @salary = salary
    end

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
        self.salary = salary
    end

    def print_pay_stub
        print_name
        pay_for_period = (salary / 365.0) * 14
        puts format("Pay This Period: $%.2f", pay_for_period)
    end
end

class HourlyEmployee < Employee
    attr_reader :hourly_wage, :hours_per_week

    def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            raise "A hourly wage of #{hourly_wage} is not valid"
        end
        @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
        if hours_per_week < 0 or hours_per_week > 24 * 7
            raise "#{hours_per_week} is not a valid amount of hours per week"
        end
        @hours_per_week = hours_per_week
    end

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hours_per_week * 2
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end

    def self.security_guard(name)
        HourlyEmployee.new(name, 19.25, 30)
    end

    def self.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end

    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
    end
end

ivan = HourlyEmployee.cashier("Ivan Stokes")
harold = HourlyEmployee.cashier("harold Nguyen")
tamara = HourlyEmployee.cashier("Tamara Wells")
susie = HourlyEmployee.cashier("Susie Powell")

edwin = HourlyEmployee.janitor("Edwin Burgess")
ethel = HourlyEmployee.janitor("Ethel Harris")

angela = HourlyEmployee.security_guard("Angela Matthews")
stewart = HourlyEmployee.security_guard("Stewart Sanchez")