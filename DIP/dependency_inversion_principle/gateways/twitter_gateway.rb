require './SOLID_/DEPENDENCY_INVERSION/app/twitter_api'

class TwitterGateway
  def initialize(overrides = {})
    @twitter_api = overrides.fetch(:twitter_api) { TwitterApi.new }
  end

  def post_story(type, duration)
    @twitter_api.share_fleet(type, duration)
  end
end