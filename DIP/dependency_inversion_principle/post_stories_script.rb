require './SOLID_/DEPENDENCY_INVERSION/gateways/instagram_gateway'
require './SOLID_/DEPENDENCY_INVERSION/usecases/post_stories'

instagram_story1 = InstagramGateway
story1 = PostStories.new(instagram_story1)
story1.post_story('foto', 15)

#o usecase não conhece em qual mídia vamos postar o story, mas precisa ter um método post_story com parâmetros type e duration.
# o gateway depende (usa) a api para se comunicar com o mundo exterior
