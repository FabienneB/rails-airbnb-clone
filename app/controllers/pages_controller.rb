class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @coworks = Cowork.all
  end

  private

end
