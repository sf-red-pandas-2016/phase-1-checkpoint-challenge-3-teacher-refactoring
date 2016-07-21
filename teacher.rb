require_relative 'dbc_teacher'

class Teacher < DBCTeacher
  attr_reader :performance_rating

  def initialize(options={})
    super
    @raise_rating = 90
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

end
