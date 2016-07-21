class Educator

  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name

  def initalize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @phase = 3

  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end



  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end



end
