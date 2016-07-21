require_relative 'teach_staff'

class ApprenticeTeacher < TeachStaff

  TARGET_RAISE = 800
  def set_phase(num) #almost_same all, teach staff and student diff
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff #almost same teach staff
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def attend_training_session # diff
    puts "Whoa. I know ruby-fu"
  end
end
