require './app/credit_analysis'

RSpec.describe CreditAnalysis do
  context 'when analysing an application' do
    it 'calls the analyst to analyse the application' do
      analyst = spy('Analyst')
      application = double('Application')

      subject = described_class.new([analyst], [application])
      subject.analyse_all_applications

      expect(analyst).to have_received(:analyse).with(application)
    end
  end
end
