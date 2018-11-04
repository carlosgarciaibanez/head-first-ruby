def iterate_prices(prices, &body)
    index = 0
    amount = 0
    while index < prices.length
        amount += body.call(prices[index])
        index += 1
    end
    amount
end

def total(prices)
    iterate_prices(prices) do |price|
        price
    end
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))

def refund(prices)
    iterate_prices(prices) do |price|
        -price
    end    
end

puts format("%.2f", refund(prices))

def show_discounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] / 3.0
        puts format("Your discount: %.2f", amount_off)
        index += 1
    end
end

show_discounts(prices)