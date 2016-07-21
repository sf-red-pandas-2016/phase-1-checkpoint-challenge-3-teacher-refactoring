require_relative 'human'
require_relative 'module'

class ApprenticeTeacher < Human
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  include Teach

  RATING = 80
  RESPONSE = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."

  def initialize(options={})
    super
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
