
require './SOLID_/DEPENDENCY_INVERSION/gateways/twitter_gateway'

RSpec.describe TwitterGateway do
  context 'when posting a story' do
    it 'calls twitter api' do
      twitter_api = instance_spy(TwitterApi)
      type = 'video'
      duration = 30

      described_class.new(twitter_api: twitter_api).post_story(type, duration)

      expect(twitter_api).to have_received(:share_fleet).with(type, duration)
    end
  end
end