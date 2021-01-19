require './app/automatic_decision_analyst'

RSpec.describe AutomaticDecisionAnalyst do
  context 'when analysing an application' do
    context 'and the analysis is approved' do
      it 'returns that the application is approved' do
        application = double('Application', customer_name: 'Zé')
        name = 'Natália'

        subject = described_class.new(name)

        result =  "#{name} approved #{application.customer_name}'s application!\n"
        expect { subject.analyse(application, true) }.to output(result).to_stdout
      end

      it 'returns that the application is rejected' do
        application = double('Application', customer_name: 'Zé')
        name = 'Natália'

        subject = described_class.new(name)

        result =  "#{name} rejected #{application.customer_name}'s application.\n"
        expect { subject.analyse(application, false) }.to output(result).to_stdout
      end
    end
  end
end
