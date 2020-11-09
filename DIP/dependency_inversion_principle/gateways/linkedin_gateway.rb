require './SOLID_/DEPENDENCY_INVERSION/app/linkedin_api'

class LinkedinGateway
  def initialize(overrides = {})
    @linkedin_api = overrides.fetch(:linkedin_api) { LinkedinApi.new }
  end

  def post_story(type, duration)
    @linkedin_api.share_story(type, duration)
  end
end