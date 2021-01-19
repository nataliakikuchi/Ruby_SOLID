require './app/credit_analysis'
require './app/analyst'
require './app/automatic_decision_analyst'

RSpec.describe CreditAnalysis do
  context 'when analysing an application' do
    context 'and analyst is an automatic analyst' do
      it 'automatically analyses the application' do
        automatic_analyst = spy(AutomaticDecisionAnalyst)
        application = double('Application', customer_name: 'Natália')
        reject = true

        subject = described_class.new([automatic_analyst], [application])
        subject.analyse_all_applications

        expect(automatic_analyst).to have_received(:analyse).with(application, reject)
      end
    end

    context 'and analyst is not an automatic analyst' do
      it 'calls the analyst to analyse the application' do
        analyst = instance_spy('Analyst')
        application = double('Application')

        subject = described_class.new([analyst], [application])
        subject.analyse_all_applications

        expect(analyst).to have_received(:analyse).with(application)
      end
    end
  end
end
