require './app/logger'

RSpec.describe Logger do
  context 'when logging a text' do
    it 'delivers formatted text' do
      format = double('format')
      delivery = spy('delivery')
      allow(format).to receive(:format).with('text').and_return('formatted text')

      subject = described_class.new(format, delivery)
      subject.log('text')

      expect(delivery).to have_received(:deliver).with('formatted text')
    end
  end
end
