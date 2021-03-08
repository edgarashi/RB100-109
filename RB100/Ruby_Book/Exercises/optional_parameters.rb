# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
          " " + "years old and I live in #{options[:city]}."
  end
end

greeting("Lucas")
greeting("Lucas", {age: 23, city: "Jackson"})