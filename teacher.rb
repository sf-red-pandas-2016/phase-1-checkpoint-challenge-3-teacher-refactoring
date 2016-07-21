require_relative 'teach_stuff'
require_relative 'receive_raise'
require_relative 'set_phase'
require_relative 'offer_high_five'
require_relative 'new_salary'

class Teacher

  attr_reader :age, :salary, :phase, :target_raise, :performance_rating
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
  include NewSalary
  include ReceiveRaise

  def set_performance_rating(rating)

    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
      # response += "feedback, I'll do better next time."
    end
    response
  end
end
