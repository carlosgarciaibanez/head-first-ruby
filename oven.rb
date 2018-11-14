class SmallOven
    attr_accessor :contents

    def turn_on
        puts "Turning oven on."
        @state = "on"
    end

    def turn_off
        puts "Turning oven off."
        @state = "off"
    end

    def bake
        unless @state == "on"
            raise "You need to turn the oven on first!"
        end
        if @contents == nil
            raise "There's nothing in the oven!"
        end
        "golden-brown #{contents}"
    end
end

# Everything is OK
dinner = ["turkey", "casserole", "pie"]
oven = SmallOven.new
oven.turn_on
dinner.each do |dish|
    oven.contents = dish
    puts "Serving #{oven.bake}"
end
oven.turn_off

# Forgot to put a dish in the oven
dinner = ['turkey', nil, "pie"]
oven = SmallOven.new
oven.turn_on
dinner.each do |dish|
    begin
        oven.contents = dish
        puts "Serving #{oven.bake}"
    rescue
        puts "Error: There's nothing in the oven!"
    end
end
oven.turn_off

# Forgot to turn the oven on
dinner = ["turkey", "casserole", "pie"]
oven = SmallOven.new
dinner.each do |dish|
    begin
        oven.contents = dish
        puts "Serving #{oven.bake}"
    rescue => exception
        puts "Error: #{exception.message}"
    end
end
oven.turn_off
