class LegendsController < ApplicationController
  def main

  end

  def index
    @legends = Legend.includes(:role).all
  end

  def show
    @legends = Legend.find(params[:id])
  end

  def about

  end
end
