class PostStories
  def initialize(digital_media)
    @digital_media = digital_media
  end

  def post_story(type, duration)
    @digital_media.new.post_story(type, duration)
  end
end

#aqui pode ser teste de unidade mockando a resposta do gateway (digital_media)-> Esse parâmetro é o gateway