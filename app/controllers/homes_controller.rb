class HomesController < ApplicationController
  def top
  end

  def about
    flash[:success] = "You have successfully"
  end
end
