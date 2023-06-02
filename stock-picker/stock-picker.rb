def stock_picker(stock_prices)
    buy_day = 0
    profit = 0
    low_price = stock_prices[0]
    results = Array.new

    stock_prices.each_with_index do |price, index|
        if price < low_price
            low_price = price
            buy_day = index
            next
        end

        if price - low_price > profit
            profit = price - low_price
            results = [buy_day, index]
        end
    end

    results
end

p stock_picker([17,3,6,9,15,8,6,1,10])