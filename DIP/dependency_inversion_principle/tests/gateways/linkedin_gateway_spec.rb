
require './SOLID_/DEPENDENCY_INVERSION/gateways/linkedin_gateway'

RSpec.describe LinkedinGateway do
  context 'when posting a story' do
    it 'calls linkedin api' do
      linkedin_api = instance_spy(LinkedinApi)
      type = 'video'
      duration = 0

      described_class.new(linkedin_api: linkedin_api).post_story(type, duration)

      expect(linkedin_api).to have_received(:share_story).with(type, duration)
    end
  end
end