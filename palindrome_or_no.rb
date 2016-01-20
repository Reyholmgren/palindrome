input = 0
while input != "quit"
  puts "Is it a palindrome? Type it in to find out or type 'quit' to exit."
  input = gets.downcase.strip.gsub(" ", "") 
  reverse = input.chars.sort_by.with_index {|_, i| -i}.join
    if input == reverse
      puts "That is a palindrome."
    elsif input == "quit"
      puts "Goodbye!"
    else
      puts "That is not a palindrome."
    end
end