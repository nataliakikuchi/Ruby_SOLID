require './app/delivery_by_email'

RSpec.describe DeliveryByEmail do
  context 'when receiving a text' do
    it 'delivers text by email' do
      text = 'Olá, mundo!'
      delivers_by_email = puts 'Enviado por e-mail.'

      subject = described_class.new.deliver(text)

      expect(subject).to eq(delivers_by_email)
    end
  end
end
