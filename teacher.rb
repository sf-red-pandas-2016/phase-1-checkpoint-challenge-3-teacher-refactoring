require_relative 'person'
require_relative 'teacher_methods'

class Teacher < Person
  attr_reader :salary, :performance_rating, :target_raise

  MIN_RATING = 90
  TARGET_RAISE = 1000

  include Teacher_Methods

  def initialize(options={})
    super
    @phase = 3
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end
end
