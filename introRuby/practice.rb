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

# matz = Japanese.new("まつもとゆきひろ")
# matz.greet

class Example
	def i_method
		puts "instance method"
	end
	def self.c_method
		puts "class method"
	end
end

instance = Example.new
# Example.c_method
# instance.i_method
# Example.i_method	# => Error
# instance.c_method	# => Error

# CONSTANT = 100
# CONSTANT = 200

# def teisu
# 	CONST = 0
# end
# teisu

# x = 100
# 5.times do | x |
# 	puts "x = #{ x }, object_id = #{ x.object_id }"
# end
# puts x

# begin
# 	1 / 0
# rescue => err
# 	puts err
# end

# File.open("./test.txt", "r") do |f|
# 	f.each_line do | l |
# 		puts l
# 	end
# end
# File.open("./test.txt", "w") do |f|
# 	f.puts "hogehoge"
# end
# File.open("./test.txt", "r") do |f|
# 	f.each_line do | l |
# 		puts l
# 	end
# end

# buff = File.read("./test.txt")
# File.open("./test.txt", "w") do |f|
# 	buff.split("\n").each do | l |
# 		f.puts l.gsub(/hoge/, "fuga")
# 	end
# end
# File.open("./test.txt", "r") do |f|
# 	f.each_line do | l |
# 		puts l
# 	end
# end


def isPrime(n)
	if n < 2
		return false
	end
	Math.sqrt(n).to_i.downto(2) do | i |
		if n % i == 0
			return false
		end
	end
	true
end

# puts isPrime 252097800623
# 100.times do | n |
# 	if isPrime n
# 		puts n
# 	end
# end
