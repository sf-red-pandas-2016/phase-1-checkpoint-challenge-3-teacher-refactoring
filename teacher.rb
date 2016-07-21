require_relative 'employee'

class Teacher < Employee
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise, :rating_for_raise
  attr_accessor :name

  RATING_FOR_RAISE = 90
  TARGET_RAISE = 1000
  PHASE = 3


  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end


end
