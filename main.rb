require_relative "methods.rb"

puts "=== Меню ==="
while true
  puts "1. Рекурсивний метод"
  puts "2. Ітераційний метод"
  puts "3. Вихід"
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
    puts "Мінімальна кількість монет для розміну - #{}"
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
    puts "Мінімальна кількість монет для розміну - #{coin_change_iteration(coins, amount)}"
  when 3
    puts "Вихід із програми."
    break
  else
    puts "Невірний вибір. Будь ласка, оберіть знову"
  end
end