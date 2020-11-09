require './SOLID/SRP/age'
require 'timecop'

RSpec.describe Age do
  context 'when calculating an age' do
    it 'returns the correct one when birthdate has passed' do
      year = Date.today.year - 20
      birthdate = "01/01/#{year}"

      subject = described_class.new(birthdate: birthdate)

      expect(subject.calculate).to eq(20)
    end

    it 'returns the correct one when birthdate has not passed' do
      birthdate = "31/12/2000"
      Timecop.freeze(Date.new(2019, 9, 18))

      subject = described_class.new(birthdate: birthdate)

      expect(subject.calculate).to eq(18)
      Timecop.return
    end
  end
end

# https://github.com/travisjeffery/timecop