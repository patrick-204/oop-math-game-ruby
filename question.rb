class Question
  attr_reader :number1, :number2

  def initialize
    @number1 = rand(1..10)
    @number2 = rand(1..10)
  end

  def current_question
    "What does #{@number1} plus #{@number2} equal?"
  end

  def lookup_answer(answer)
    answer == @number1 + @number2
  end
end
