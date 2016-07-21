require_relative 'human'
require_relative 'module'

class Teacher < Human
  attr_reader   :performance_rating 
  include Teach

  RATING = 90
  RESPONSE = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
  end
  
end
