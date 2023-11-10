require './app'

def main
  app = App.new
  puts 'Welcome to The School Library'
  puts ' '
  loop do
    puts 'Please select an option by entering a number:'
    puts
    puts '1. List all books'
    puts '2. List all persons'
    puts '3. Create a person'
    puts
    option = gets.chomp.to_i
    case option
    when 1
      app.book_list
    when 2
      app.person_list
    when 3
      app.create_person
    else
      'Invalid option, try again'
    end
  end
end

main
