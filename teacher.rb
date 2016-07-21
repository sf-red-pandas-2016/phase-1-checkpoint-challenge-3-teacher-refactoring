require_relative 'school_person'
require_relative 'module'

class Teacher < SchoolPerson
  include Raise
  include Teach
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name

  def initialize(options = {})
    super
    @target_raise = 1000
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
      # response += ""
    end
    response
  end
end
