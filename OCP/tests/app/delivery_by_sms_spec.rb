require './app/delivery_by_sms'

RSpec.describe DeliveryBySms do
  context 'when receiving a text' do
    it 'delivers text by SMS' do
      text = 'Olá, mundo!'
      delivers_by_sms = puts 'Enviado por SMS.'

      subject = described_class.new.deliver(text)

      expect(subject).to eq(delivers_by_sms)
    end
  end
end
