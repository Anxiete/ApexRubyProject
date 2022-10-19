class LegendsController < ApplicationController
  def main
    @roles = Role.all
  end

  def index
    @legends = Legend.order(:name).includes(:role).all.page(params[:page]).per(6)
    @roles = Role.all
  end

  def show
    @legend = Legend.find(params[:id])
    @roles = Role.all
  end

  def about
    @roles = Role.all
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

