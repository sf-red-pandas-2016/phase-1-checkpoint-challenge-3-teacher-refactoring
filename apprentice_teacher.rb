require_relative 'dbc_community'
require_relative 'teacher'
require_relative 'teaching_module'

class ApprenticeTeacher < DBCCommunity #< Teacher  #
  include Teaching
  attr_reader :age, :phase, :target_raise
  attr_accessor :name, :salary
  TARGET_RATING = 80
  

  def initialize(options={})
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    super
    @phase = 3
    @target_raise = 800
  end

  # def offer_high_five
  #   "High five!"
  # end

  def set_phase(num)
    # @phase = num
    super
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  # def salary=(new_salary)
  #   puts "This better be good!"
  #   @salary = new_salary
  # end

  # def receive_raise(raise)
  #   @salary += raise
  # end

  # def set_performance_rating(rating)
  #   response = ""
  #   if rating > 80
  #     response = "Yay, I'm a great employee!"
  #     receive_raise(@target_raise)
  #   else
  #     response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
  #   end
  #   response
  # end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
