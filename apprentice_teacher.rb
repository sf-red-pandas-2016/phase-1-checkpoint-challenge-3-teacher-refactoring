require_relative 'school_person'
require_relative 'module'

class ApprenticeTeacher < SchoolPerson
  include Raise
  include Teach
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options = {})
    super
    @target_raise = 800
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 80
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
