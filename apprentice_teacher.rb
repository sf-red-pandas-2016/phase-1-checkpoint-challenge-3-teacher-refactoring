require_relative 'teacher'

class ApprenticeTeacher < TeachingStaff

  def initialize(options={})
    @target_raise = 800
    @phase = 3
    @rating_min = 80
    @response = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
    super
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end

end
