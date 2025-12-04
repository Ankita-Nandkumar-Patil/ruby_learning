DIAL_BOOK = { 
  "pune" => "123",
  "nashik" => "456",
  "mumbai" => "789",
  "delhi" => "147",
  "nagpur" => "258",
  "nepal" => "369"
}

def show_cities
  puts "Available cities:"
  DIAL_BOOK.each_key { |city| puts city }

  print "Enter a city to get area code: "
  city = gets.chomp.downcase

  if DIAL_BOOK.key?(city)
    puts "\nArea code for #{city.capitalize} is: #{DIAL_BOOK[city]}"
  else
    puts "\nInvalid city"
  end
end

def show_codes
  puts "Available area codes:"
  DIAL_BOOK.each_value { |code| puts code }

  print "Enter a code to get city: "
  code = gets.chomp

  city = DIAL_BOOK.key(code)   # reverse lookup

  if city
    puts "\nCity with area code #{code} is: #{city.capitalize}"
  else
    puts "\nInvalid code"
  end
end

attempt = 1
loop do
  break if attempt > 3

  puts "\n1. Get area code based on city"
  puts "2. Get city based on area code"
  print "Choose an option: "
  action = gets.chomp

  puts "-" * 25

  case action
  when "1"
    show_cities
  when "2"
    show_codes
  else
    puts "Invalid input, ending program"
    break
  end

  attempt += 1
end
