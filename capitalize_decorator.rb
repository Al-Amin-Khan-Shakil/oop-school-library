require './decorator'

# Child of decorator class to capitalize name
class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name&.split&.map(&:capitalize)&.join('')
  end
end
