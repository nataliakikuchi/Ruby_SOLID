require './SOLID_/DEPENDENCY_INVERSION/app/instagram_api'

class InstagramGateway
  def initialize(overrides = {})
    @instagram_api = overrides.fetch(:instagram_api) { InstagramApi.new }
  end

  def post_story(type, duration)
    @instagram_api.send_to_stories(type, duration)
  end
end

#testar se o método post_story instancia a classe e chama o método com os atributos corretos