require_relative 'teacher'
require_relative 'school_methods'

class ApprenticeTeacher < Teacher
  include HighFive
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  TARGET_RAISE = 800
  RATING = 80
  def initialize(options={})
    super
    @target_raise = TARGET_RAISE
  end


  def teach_stuff
    super
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end


  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
