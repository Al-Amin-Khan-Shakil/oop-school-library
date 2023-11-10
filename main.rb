require './app'

def main
  app = App.new
  puts 'Welcome to The School Library'
  puts ' '
  loop do
    puts 'Please select an option by entering a number:'
    puts
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a book rental'
    puts '6. List all rentals for a given person id '
    puts '7. Exit'
    puts
    option = gets.chomp.to_i
    case option
    when 1
      app.book_list
    when 2
      app.person_list
    when 3
      app.create_person
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.list_rentals
    when 7
      break
    else
      'Invalid option, try again'
    end
  end
end

main
