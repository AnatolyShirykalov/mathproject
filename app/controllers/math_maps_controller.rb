class MathMapsController < ApplicationController
  def index
    @math_maps = MathMap.all
  end

  def show
    @math_map = MathMap.find(params[:id])
  end
end
