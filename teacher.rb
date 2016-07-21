require_relative 'teach_stuff'
require_relative 'receive_raise'
require_relative 'set_phase'
require_relative 'offer_high_five'

class Teacher

  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name, :new_salary

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
  end

  include OfferHighFive
  include SetPhase
  include TeachStuff

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  # def salary=(new_salary)
  #   puts "This better be good!"
  #   @salary = new_salary
  # end

  include ReceiveRaise

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
