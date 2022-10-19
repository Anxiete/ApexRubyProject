class LegendsController < ApplicationController
  def main
    @main_header  = true
  end

  def index
    @legends = Legend.order(:name).includes(:role).all.page(params[:page]).per(6)
    @index_header  = true
  end

  def show
    @legend = Legend.find(params[:id])
    @show_header  = true
  end

  def about
    @about_header = true
  end

  def search
    @search_header = true
    search = params[:search]
    role = params[:roles].to_s

    @legends = if params[:roles] == ""
      Legend.where('name LIKE ?', "%#{search}%")
    else
      Legend.where('name LIKE ? AND role_id = ?', "%#{search}%", "#{role}")
    end
  end
end

