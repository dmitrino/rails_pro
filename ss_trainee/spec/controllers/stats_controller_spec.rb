require 'rails_helper'
#Hello from test & again hello hello!!!

#Bla Bla Bla


RSpec.describe StatsController, type: :controller do
  describe '#bark' do
    it 'returns the "Woof!"' do
      test1 = StatsController.new
      expect(test1.bark).to eql('Woof!')
    end
  end
end
