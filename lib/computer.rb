class Computer
  attr_reader :name, :move

  def initialize(name = 'Computer')
    @name = name
  end

  def choose
    self.move = [:rock, :paper, :scissors].sample
  end

  private

  attr_writer :move
end