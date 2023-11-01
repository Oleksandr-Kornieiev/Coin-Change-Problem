require_relative "methods.rb"

loop do
  puts "=== Меню ==="
  while true
    puts "1. Жадібний метод (первинне помилкове рішення)"
    puts "2. Ітераційний метод (динамічне програмування)"
    puts "3. Рекурсивний метод (у розробці)"
    puts "4. Вихід"
    choice = gets.to_i
    case choice
    when 1
      puts "Введіть суму, яку необхідно розміняти:"
      amount = gets.to_i
      puts "Введіть кількість номіналів:"
      n = gets.to_i
      coins = []
      puts "Введіть номінали монет"
      for x in 1..n
        puts "#{x} монета:"
        coins.push(gets.to_i)
      end
      coins = coins.sort.reverse
      puts "Мінімальна кількість монет для розміну - #{greedy_algorithm(coins, amount)}"
      break
    when 2
      puts "Введіть суму, яку необхідно розміняти:"
      amount = gets.to_i
      puts "Введіть кількість номіналів:"
      n = gets.to_i
      coins = []
      puts "Введіть номінали монет"
      for x in 1..n
        puts "#{x} монета:"
        coins.push(gets.to_i)
      end
      coins.sort!
      puts "Мінімальна кількість монет для розміну - #{coin_change_iteration(coins, amount)}"
      break
    when 3
      puts "Метод у розробці"
=begin
      puts "Введіть суму, яку необхідно розміняти:"
      amount = gets.to_i
      puts "Введіть кількість номіналів:"
      n = gets.to_i
      coins = []
      puts "Введіть номінали монет"
      for x in 1..n
        puts "#{x} монета:"
        coins.push(gets.to_i)
      end
      memo = { }
      puts "Мінімальна кількість монет для розміну - #{coin_change_recursion_with_memo(coins, amount, memo)}"
      break
=end
    when 4
      puts "Вихід із програми."
      break
    else
      puts "Невірний вибір. Будь ласка, оберіть знову 1, 2, 3 або 4."
    end
  end
  break if menu_again == "n"
end