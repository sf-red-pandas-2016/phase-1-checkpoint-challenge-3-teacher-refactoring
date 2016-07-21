require_relative 'teach_staff'
class Teacher < TeachStaff
    TARGET_RAISE = 1000


  def initialize(options={})
  @performance_rating = 0
  end

  def teach_stuff #almost same teach staff
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def salary=(new_salary) # same teach staff
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)# same teach staff
    @salary += raise
  end

  def set_performance_rating(rating) #almost same teach staff
    response = ""
    if rating > 90 # diff
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
