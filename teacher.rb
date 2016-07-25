require_relative 'employee'

class Teacher < Employee

  attr_reader :performance_rating

  TARGET_RAISE = 1000
  TARGET_PERFORMANCE_RATING = 90

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
  end
end


