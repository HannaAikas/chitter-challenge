class Chitter
  @peeps = [
    "Hi there, this is the first ever peep!",
    "And this is the second ever peep."
  ]

  def self.all
    @peeps
  end

  def self.create(peep)
    @peeps << peep
  end
end
