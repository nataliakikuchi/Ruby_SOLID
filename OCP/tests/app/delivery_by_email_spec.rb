require './app/delivery_by_email'

RSpec.describe DeliveryByEmail do
  context 'when receiving a text' do
    it 'delivers text by email' do
      text = "Enviado por e-mail.\n"

      expect { described_class.new.deliver(text) }.to output(text).to_stdout
    end
  end
end
