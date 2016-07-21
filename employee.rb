require_relative 'high_five'



class Employee

  attr_reader :age, :salary
  attr_accessor :name, :rating_for_raise, :phase, :target_raise

  include HighFive

  #same
  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @phase = self.class::PHASE
    @rating_for_raise = self.class::RATING_FOR_RAISE
    @target_raise = self.class::TARGET_RAISE
  end

  #same

  #same
  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  #same
  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

   def set_performance_rating(rating)
    response = ""
    if rating > @rating_for_raise
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

end
