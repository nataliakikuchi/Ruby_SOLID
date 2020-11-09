require './SOLID_/DEPENDENCY_INVERSION/usecases/post_stories'
require './SOLID_/DEPENDENCY_INVERSION/gateways/instagram_gateway'

RSpec.describe PostStories do
  context 'when posting stories' do
    it 'returns a gateway response' do
      digital_media_class = class_double(InstagramGateway)
      digital_media_instance = instance_double(InstagramGateway)
      type ='foto'
      duration = 12
      message = 'Arquivo de foto postado com sucesso. A duração desse story é de 12 segundos.'
      allow(digital_media_class).to receive(:new).and_return(digital_media_instance)
      allow(digital_media_instance).to receive(:post_story).with(type, duration).and_return(message)

      subject = described_class.new(digital_media_class).post_story(type, duration)

      expect(subject).to eq(message)
    end
  end
end