require './decorator'

# Child of Decorator class to trim name
class TrimmerDecorator < Decorator
  def correct_name
    striped_name = @nameable.correct_name.strip
    striped_name.length > 10 ? striped_name[0...10] : striped_name
  end
end
