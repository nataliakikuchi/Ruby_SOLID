require './SOLID_/DEPENDENCY_INVERSION/gateways/instagram_gateway'

RSpec.describe InstagramGateway do
  context 'when posting a story' do
    it 'calls instagram api' do
      instagram_api = instance_spy(InstagramApi)
      type = 'video'
      duration = 15

      described_class.new(instagram_api: instagram_api).post_story(type, duration)

      expect(instagram_api).to have_received(:send_to_stories).with(type, duration)
    end
  end
end