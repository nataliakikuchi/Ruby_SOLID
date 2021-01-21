require './app/analyst'

RSpec.describe Analyst do
  context 'when analysing an application' do
    it 'returns that an analyst is analysing it' do
      application = double('Application', customer_name: 'Zé')
      name = 'Natália'

      subject = described_class.new(name)

      result = "#{name} is now analysing #{application.customer_name}'s application.\n"
      expect { subject.analyse(application) }.to output(result).to_stdout
    end
  end
end
