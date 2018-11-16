class ListWithCommas
    attr_accessor :items

    def join
        if items.length == 1
            return items.first
        end
        if items.length == 2
            return "#{items.first} and #{items.last}"
        end
        last_item = "and #{items.last}"
        other_items = items.slice(0, items.length - 1).join(", ")
        "#{other_items}, #{last_item}"
    end

end