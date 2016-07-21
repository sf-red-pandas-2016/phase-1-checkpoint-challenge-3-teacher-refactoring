require_relative 'employee'

class Teacher < Employee

  attr_reader :performance_rating, :target_raise

  # attr_reader :salary, :performance_rating, :target_raise, :phase

  RATING_COMPARISON=90
  BASE_RESPONSE="Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"

  def initialize(options={})
    @target_raise = 1000
    @performance_rating = 0
    super
  end

end
