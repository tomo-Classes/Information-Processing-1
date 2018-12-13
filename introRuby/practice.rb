def hoge(str)
	str.length.times do | i |
		puts(str[i...str.length] + str[0...i])
	end
end
# hoge("Hello")

def greet(h)
	if (h >= 0 && h < 6) || (h >= 18 && h < 24)
		"Good evening"
	elsif h >= 6 && h < 12
		"Good morning"
	elsif h >= 12 && h < 18
		"Good afternoon"
	else
		"は？"
	end
end
# 25.times do | hour |
# 	puts hour.to_s + ": " + greet(hour)
# end


x = 4
# puts x.class
# => Integer
x = "4"
# puts x.class
# => String
x = [1, 2, 3, 4]
# puts x.class
# => Array
x = { "one": 1, "two": 2, "three": 3, "four": 4 }
# puts x.class
# => Hash
x = 1.2
# puts x.class
# => Float
x = true
# puts x.class
# => TrueClass
x = false
# puts x.class
# => FalseClass
x = nil
# puts x.class
# => NilClass


# 4.times do | x |
# 	puts x
# end

# 4.times {|x| puts x}

week = ["Mon", "Tue", "Wed", "Thi", "Fri", "Sat", "Sun"]

# week.each do | weekday |
# 	puts weekday
# end

# week.each {|weekday| puts weekday}

week = { "Mon": 1, "Tue": 2, "Wed": 3, "Thi": 4, "Fri": 5, "Sat": 6, "Sun": 7 }

# week.each do | key, value |
# 	puts "#{ key } is #{ value }"
# end

# week.each {|key, value| puts "#{ key } is #{ value }"}


class Human
	def initialize(name)
		@name = name
		puts "wahh"
	end
	def greet
		puts "Hello, I am #{ @name }."
	end
end

class Japanese < Human
	def greet
		puts "こんにちは、私は#{ @name }です。"
	end
end

matz = Japanese.new("まつもとゆきひろ")
matz.greet
