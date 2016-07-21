require_relative 'teach_stuff'
require_relative 'receive_raise'
require_relative 'set_phase'
require_relative 'offer_high_five'

class ApprenticeTeacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
  end

  include OfferHighFive
  include SetPhase
  include TeachStuff

  def teach_stuff
    response = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  include ReceiveRaise

  def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
