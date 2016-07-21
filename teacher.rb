require_relative 'apprentice_teacher'

module Positivity
  def offer_high_five
    "High five!"
  end
end 

module TeacherAdministration
  attr_reader  :salary, :target_raise

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_phase(num) 
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end
end 

module SchoolInformation
  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options = {})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end
end

module Performance 
 def set_performance_rating(rating)
  response = ""
  if rating > self.class::SET_RATING
    receive_raise(@target_raise)
    response = "Yay, I'm a great employee!"
  else
    response += "Oh, well -- thanks to this actionable, specific, and kind "
    response += "feedback, I'll do better next time."
  end
  response
  end 
end 

class Teacher 
  attr_reader :performance_rating

  include SchoolInformation 
  include Positivity
  include TeacherAdministration
  include Performance
  SET_RATING = 90

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

end
