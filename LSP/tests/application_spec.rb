require './app/application'

RSpec.describe Application do
  context 'creating an application' do
    it 'sets customer name' do
      subject = described_class.new('Natalia Kikuchi')

      expect(subject.customer_name).to eq('Natalia Kikuchi')
    end
  end
end
