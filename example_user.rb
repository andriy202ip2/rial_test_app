class User
  attr_accessor :name, :email, :test

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @test = attributes[:test]

  end

  def formatted_email
    "#{@name} <#{@email}> === #{@test}"
  end
end
