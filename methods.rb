def greedy_algorithm(coins, amount)
  counter = 0
  coins.each do |coin|
    while amount >= coin
      amount -= coin
      counter += 1
    end
  end
  return amount == 0 ? counter : -1
end

def coin_change_iteration(coins, amount)
  value = [amount + 1] * (amount + 1)
  value[0] = 0
  for x in 1..amount
    coins.each do |coin|
      if (x - coin >= 0)  && (value[x - coin] + 1 < value[x])
        value[x] = value[x - coin] + 1
      end
    end
  end
  value[amount] == amount + 1 ? -1 : value[amount]
end

=begin
def coin_change_recursion_with_memo(coins, amount, memo)

end
=end

def menu_again
  puts "Хочете знову знайти найменшу кількість монет? [y/n]"
  menu_again = gets.chomp.downcase
  until %w[y n].include?(menu_again)
    puts "Невірний вибір. Будь ласка, оберіть знову 'y' або 'n'."
    menu_again = gets.chomp.downcase
  end
  menu_again
end
