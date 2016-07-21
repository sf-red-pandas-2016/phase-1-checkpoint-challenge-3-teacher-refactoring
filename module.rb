module Raise


  def receive_raise(raise)
    if @salary
    @salary += raise
    end
  end

end


module Teach
# NEED TO REFACTOR THE teach_stuff method
  def teach_stuff
    response = ""
    if self.class == ApprenticeTeacher
      response += "Listen, class, this is how everything works. "
    else
      self.class == Teacher
      response += "Listen, class, this is how everything works, fo SHO! "
    end

    if self.class == ApprenticeTeacher
      response += "*drops crazy knowledge bomb* "
    else self.class == Teacher
      response += "*drops flat-out insane knowledge bomb* "
    end

    if self.class == ApprenticeTeacher
      response += "... You're welcome."
    else
      self.class == Teacher
      response += "... You're welcome. *saunters away*"
      response
    end
  end
end
