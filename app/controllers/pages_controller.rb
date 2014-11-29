class PagesController < ApplicationController
  def home
    redirect_to albums_path
  end

  def about
  end

  def contact
  end
end
