class Question

  def initialize(id)
    @id = id
    @n1 = rand(20)
    @n2 = rand(20)
    @answer = @n1 + @n2
  end

  attr_reader :n1
  attr_reader :n2
  attr_reader :answer

end