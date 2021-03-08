# proc_example.rb

talk = Proc.new do |name|
  puts "I AM TALKIN, #{name}, u fuck"
end

talk.call "Lauren"