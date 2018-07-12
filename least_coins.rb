#write out your code here

# def least_coins(cents)
#   cents_hash = {"quarters"=> 25, "dimes" => 10, "nickels" => 5, "pennies" => 1}
#   quarters = 0
#   amount= 0
#   while TRUE
#     break if amount + 25 > cents
#     amount += 25
#     quarters += 1
#   end
#   dimes = 0
#   while TRUE
#     break if amount + 10 > cents
#     amount += 
  
# #Code your answer here!

# end


def least_coins(input_value, running_total, coin_value)
  number_of_coins_of_this_type = 0
  while running_total + coin_value <= input_value
    number_of_coins_of_this_type += 1
    running_total += coin_value
  end
  number_of_coins_of_this_type
end

puts "Enter coin amount"
input_value = gets.chomp.to_i
running_total = 0
cents_hash = {"quarters"=> 25, "dimes" => 10, "nickels" => 5, "pennies" => 1}

cents_hash.each do |key, coin_value|
  
  number_of_coins_of_this_type = least_coins(input_value, running_total, coin_value)
  
  running_total += number_of_coins_of_this_type * coin_value
  
  puts "#{number_of_coins_of_this_type} #{key}"
end

  