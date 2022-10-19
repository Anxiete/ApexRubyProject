class LegendsController < ApplicationController
  def main
    @home_banner  = true
  end

  def index
    @legends = Legend.order(:name).includes(:role).all.page(params[:page]).per(6)
  end

  def show
    @legend = Legend.find(params[:id])
  end

  def about

  end

  def search
      search = params[:search]
      role = params[:roles].to_s

      @legends = if params[:roles] == ""
        Legend.where('name LIKE ?', "%#{search}%")
      else
        Legend.where('name LIKE ? AND role_id = ?', "%#{search}%", "#{role}")
      end
  end
end

