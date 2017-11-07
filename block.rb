arr=["john","mino","tak"]

arr.each{|name| puts name}

arr.each do |name| 
    puts name 
    puts name + "입니다."
    puts "멋사 직원 " + name
end

phone_book = {
    "John" => "2345123",
    "mino" => "1223452",
    "tak"  => "1234564"
}

phone_book.each {|key| puts key}
