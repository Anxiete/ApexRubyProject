class LegendsController < ApplicationController
  def home

  end

  def index
    @legends = Legend.order(:name).includes(:role).all.page(params[:page]).per(5).search(params[:search])
  end

  def show
    @legend = Legend.find(params[:id])
  end

  def about

  end
end
