require_relative 'school_community'

class TeachStaff < SchoolCommunity
  attr_reader :target_raise
  attr_accessor :name



  PHASE = 3
  TARGET_RAISE = 800

  def set_phase(num) #almost_same all, teach staff and student diff
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff #almost same teach staff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
  end

  def salary=(new_salary) # same teach staff
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)# same teach staff
    @salary += raise
  end

end
