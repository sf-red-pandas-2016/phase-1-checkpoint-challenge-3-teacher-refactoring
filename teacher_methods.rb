module Teacher_Methods
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
      if rating > self.class::MIN_RATING
        receive_raise(self.class::TARGET_RAISE)
        response = "Yay, I'm a great employee!"
      else
        response += "Oh, well -- thanks to this actionable, specific, and kind "
        response += "feedback, I'll do better next time."
      end
      response
    end

    def attend_training_session
      puts "Whoa. I know ruby-fu"
    end
end