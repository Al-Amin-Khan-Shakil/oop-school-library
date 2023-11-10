require './student'
require './teacher'

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

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp.to_i
    case person_type
    when 1
      create_student
    when 2
      create_teacher
    else
      'Invalid number, try again'
    end
  end

  def create_student
    print 'Name: '
    name = gets
    print 'Age: '
    age = gets.chomp.to_i
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase == 'y'
    student = Student.new(age, name, permission)
    @persons << student
    puts 'Person created successfully'
    puts ' '
  end
end
