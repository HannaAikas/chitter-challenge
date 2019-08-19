require 'chitter'

describe Chitter do
  describe '.all' do
    it 'shows all the peeps' do
      chitter = Chitter.all

      expect(chitter).to include "Hi there, this is the first ever peep!"
      expect(chitter).to include "And this is the second ever peep."
    end
  end
  
  describe '.create' do
    it 'creates a new peep' do
      Chitter.create("Hello Chitter!")
      chitter = Chitter.all

      expect(chitter).to include "Hello Chitter!"
    end
  end
end
