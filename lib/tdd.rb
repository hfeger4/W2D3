class Array

  def my_uniq
     arr = []
     self.each do |el|
       arr << el unless arr.include?(el)
     end
     arr
  end

  def my_two_sum
    pairs = []
    (0...length).each do |i|
      ((i+1)...length).each do |j|
        pairs << [i,j] if self[i] + self[j] == 0
      end
    end
    pairs
  end


end

def my_transpose(rows)
  el = rows.first.length
   cols = Array.new(el){Array.new(el)}
   el.times do |i|
     el.times do |j|
      cols[j][i] = rows[i][j]
     end
   end
  cols

end

def stock_picker(prices)
  best_pair = nil
  best_profit = 0

  prices.each_index do |buy|
    prices.each_index do |sell|

      next if sell < buy

      profit = prices[sell] - prices[buy]
      if profit > best_profit
        best_pair, best_profit = [buy,sell], profit
      end
    end
  end
  best_pair
end
