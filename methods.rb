def coin_change_iteration(coins, amount)
  value = [amount + 1] * (amount + 1)
  value[0] = 0
  for x in 1..amount
    coins.each do |coin|
      if (x - coin >= 0) && (value[x - coin] + 1 < value[x])
        value[x] = value[x - coin] + 1
      end
    end
  end
  value[amount]
end
