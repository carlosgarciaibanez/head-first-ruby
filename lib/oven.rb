class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

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
	        raise OvenOffError, "You need to turn the oven on first!"
        end
        if @contents == nil
	        raise OvenEmptyError, "There's nothing in the oven!"
        end
        "golden-brown #{contents}"
    end
end