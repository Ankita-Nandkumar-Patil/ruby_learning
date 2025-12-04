#they are simple key-value pairs that are similar to objects
#key : could string, integer or symbol
#values could be anything : type can be checked by value.class

hash1 = {"str1" => "hello", "str2" => "welcome", "str3" => "ROR world" }
hash2 = {1 => "age", 2 => 25}
# symbol keys
hash3 = {a: "name", b: "sex", c: "address"}
hash4 = {:age => 24, :name => "ankita", :address =>{street: "abc", city: "nashik"}}

p hash4[:address][:city] 

