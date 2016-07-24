require_relative 'employee'

class ApprenticeTeacher < Employee

  TARGET_RAISE = 800
  TARGET_PERFORMANCE_RATING = 80

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
