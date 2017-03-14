# Part 1

possible_items = ['old paperback book' , 'potato' , 'red onion' , 'dried lemon' , 'frankincense' , 'medicinal herbs' , 'saffron' , 'glass spice jar' , 'red fabric' , 'orange fabric' , 'handicrafts' , 'small Persian rug' , 'medium Persian rug' , 'large Persian rug' , 'extra large Persian rug']

puts "Greetings and welcome to The Souq! May I please have your name?"
name = gets.chomp
command = 0
cart = 0
new_cart = []
puts "Here is a list of items you can choose to buy!:"
possible_items.each do |item|
  puts " #{item}"
end

while command == 0
  puts "What would you like to add to your shopping cart #{name}?"
  addition = gets.chomp.to_s

    if possible_items.include?(addition)
      puts "We have that item! "
      cart = cart + 1
      print "Items = #{cart}"
      puts ""
      new_cart.push(addition)
    else
      puts "Sorry, we don't carry that item. "
    end

  puts "Would you like to add another item? (y/n)"
  answer = gets.chomp

    if answer == "y"
      command = 0
    elsif answer == "n"
      puts "Thank you for shopping at The Souq, #{name}."
      puts "Here is a list of your items. Have a nice day!"

        new_cart.each do |item|
          print " * "
          puts item
      command = 1
        end

    else
      puts "That is an invalid input, please shop again."
      exit
    end
end
