require_relative 'teacher_class'

class ApprenticeTeacher < ATeacher
  attr_reader :age

  A_PERFORMANCE_RATING = 80
  TARGET_RAISE = 800

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
