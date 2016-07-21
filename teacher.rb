require_relative 'spec/person'
require_relative 'spec/teach'

class Teacher< Person
  include Teach
  attr_reader :performance_rating
  RATING=90
  # FIRST=", fo SHO!"
  # SECOND="flat-out"
  # THIRD="*saunters away*"

  def initialize(options={})
    super
    @target_raise = 1000
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  # def teach_stuff
  #   response = ""
  #   response += "Listen, class, this is how everything works#{self.class::FIRST} "
  #   response += "*drops #{self.class::SECOND} knowledge bomb* "
  #   response += "... You're welcome.#{self.class:THIRD}"
  #   response
  # end
end
