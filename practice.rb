require './practice_otherclass1'
puts "hello world\n"
String output = 3*2
puts output

#single line comment

=begin
multi-line comment
=end

#:: = scope resolution operator; Discordrb::Commands::Commandbot is referring to the Commandbot declared in Commands declared in Discordrb

#defining methods
def add(a, b)
    return a + b
end

def putshello(name)
    puts "Hello #{name.capitalize}!"    #puts == cout
end

def hello(name)
    return "Hello #{name.capitalize}!"  #returning string
end

puts "5 + 6: #{add 5, 6}"

#methods can be called without brackets
putshello("potato")
putshello "potato"
puts hello "tomato"
puts "6 - 5: #{sub 6, 5}"

nums = [1, 2, 3, 4, 5]
nums.each do |e|
    p e
end

puts "----"
p nums