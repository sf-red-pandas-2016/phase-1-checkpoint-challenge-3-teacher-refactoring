require_relative 'employee'

class ApprenticeTeacher < Employee
  attr_reader :age, :salary
  attr_accessor :name, :rating_for_raise, :phase, :target_raise

  RATING_FOR_RAISE = 80
  TARGET_RAISE = 800
  PHASE = 3


  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end

end
