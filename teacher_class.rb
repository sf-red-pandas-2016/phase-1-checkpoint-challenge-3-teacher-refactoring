require_relative 'school_member'

class ATeacher < SchoolMember
  attr_reader :salary

  def a_performance_rating
    self.class::A_PERFORMANCE_RATING
  end

  def target_raise
    self.class::TARGET_RAISE
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if rating > a_performance_rating
      receive_raise(target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end


end
