class Player

  def initialize(id)
    @id = id
    @name = "Player #{id}"
    @lives = 3
    @response = ''
  end

  attr_reader :name
  attr_accessor :lives
  attr_accessor :response

end