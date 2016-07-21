require_relative 'person'
require_relative 'teacher_methods'

class ApprenticeTeacher < Person
  attr_reader :salary, :target_raise
  
  MIN_RATING = 80
  TARGET_RAISE = 800

  include Teacher_Methods
  
  def initialize(options={})
    super
    @phase = 3
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end
end
