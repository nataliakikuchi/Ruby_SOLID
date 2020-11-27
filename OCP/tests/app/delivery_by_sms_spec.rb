require './app/delivery_by_sms'

RSpec.describe DeliveryBySms do
  context 'when receiving a text' do
    it 'delivers text by SMS' do
      text = "Enviado por SMS.\n"

      expect { described_class.new.deliver(text) }.to output(text).to_stdout
    end
  end
end
