require_relative 'teach_stuff'
require_relative 'receive_raise'
require_relative 'set_phase'
require_relative 'offer_high_five'
require_relative 'new_salary'

require_relative 'teacher'

class ApprenticeTeacher# < Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name, :new_salary

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800

  end

  include OfferHighFive
  include SetPhase
  include TeachStuff
  include NewSalary
  include ReceiveRaise

  def teach_stuff
    response = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  end

  def set_performance_rating(rating)

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
