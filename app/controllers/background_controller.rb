class BackgroundController < ApplicationController

  def image
    redirect_to "vendor/images/background_#{rand(4)}.jpg"
  end


end
