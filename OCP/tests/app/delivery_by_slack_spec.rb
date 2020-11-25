require './app/delivery_by_slack'

RSpec.describe DeliveryBySlack do
  context 'when receiving a text' do
    it 'delivers text by Slack' do
      text = 'Olá, mundo!'
      delivers_by_slack = puts 'Enviado por Slack.'

      subject = described_class.new.deliver(text)

      expect(subject).to eq(delivers_by_slack)
    end
  end
end
