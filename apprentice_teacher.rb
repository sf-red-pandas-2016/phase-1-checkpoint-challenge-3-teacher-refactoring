require_relative 'employee'

class ApprenticeTeacher < Employee

  attr_reader :target_raise

  RATING_COMPARISON=80
  BASE_RESPONSE="Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."

  def initialize(options={})
    @target_raise = 800
    super
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
