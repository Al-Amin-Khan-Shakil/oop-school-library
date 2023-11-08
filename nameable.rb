# Abstruction class to correct the name
class Nameable
  def correct_name
    raise NotImplementedError, 'Subclasses must implement some_method'
  end
end
