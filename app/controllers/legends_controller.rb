class LegendsController < ApplicationController
  def home

  end

  def index
    @legends = Legend.order(:name).includes(:role).all.page(params[:page]).per(5)
  end

  def show
    @legend = Legend.find(params[:id])
  end

  def about

  end

  def roles

  end
end
