class BackgroundController < ApplicationController

  def image
    redirect_to "/assets/images/background_#{rand(1)}.jpg"
  end

  def randomized_background_image
    images = ["assets/foo.jpg", "assets/random.jpg", "assets/super_random"]
    images[rand(images.size)]
  end
end
