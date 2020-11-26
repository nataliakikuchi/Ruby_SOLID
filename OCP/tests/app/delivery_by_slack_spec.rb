require './app/delivery_by_slack'

RSpec.describe DeliveryBySlack do
  context 'when receiving a text' do
    it 'delivers text by Slack' do
      text = "Enviado por Slack.\n"

      expect { described_class.new.deliver(text) }.to output(text).to_stdout
    end
  end
end

#puts escreve na variável $stdout, que coloca as coisas no console
#teste para ver se o puts funciona e não o que ele retorna