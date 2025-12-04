# get username-password input -> 
# check in DB if its correct
# x to exit any other key to continue
# give 3 attempts

DB = [
  {id: "ankita", pwd: "Anki123"},
  {id: "asmita", pwd: "Asmi123"},
  {id: "khushi", pwd: "khushi123"},
  {id: "sakshi", pwd: "sak123"}
]

puts "Welcome to authenticator"
25.times {print "-"}
puts

def authUser(id, pwd)
  DB.each do |user_record|
    if user_record[:id] == id && user_record[:pwd] == pwd
      puts "hello #{id} login successful"
      return user_record
    end
  end
  "invalid credentials"
end

attempt = 1
while attempt < 4
  print "Username: "
  id = gets.chomp
  print "Password: "
  pwd = gets.chomp
  authResult = authUser(id, pwd)
  puts authResult
  15.times {print "-"}
  puts
  if attempt == 3 
    puts "you've exceeded the number of attempts"
  else
    puts "press X to exit or any other key to continue"
  end
  step = gets.chomp.downcase
  break if step == "x"
  attempt += 1
end