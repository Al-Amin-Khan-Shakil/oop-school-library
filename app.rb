# App class for interface actions
class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def book_list(show_index: false)
    if @books.empty?
      puts 'Sorry, the library is empty. Please add some books.'
    else
      @books.each_with_index do |book, index|
        puts "#{show_index ? index : ' '} Title: \"#{book.title}\", Author: \"#{book.author}\"."
      end
    end
    puts
  end

  def person_list(show_index: false)
    if @persons.empty?
      puts 'Sorry, there is no one, add your friends'
    else
      @persons.each_with_index do |person, index|
        puts "#{show_index ? index : ' '} [#{person.class}]" \
             "Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
      end
    end
    puts
  end
end
