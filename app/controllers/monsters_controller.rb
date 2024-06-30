class MonstersController < ApplicationController
  def index
    @monsters = Monster.all

    if params[:search].present?
      @monsters = @monsters.where("LOWER(monsters.name) LIKE ?", "%#{params[:search].downcase}%")
    end

    if params[:location].present?
      @monsters = @monsters.joins(:locations).where(locations: { id: params[:location] })
    end

    if params[:ailment].present?
      @monsters = @monsters.joins(:ailments).where(ailments: { id: params[:ailment] })
    end

    @monsters = @monsters.page(params[:page]).per(6)
  end

  def show
    @monster = Monster.find_by(name: params[:name])
  end
end
