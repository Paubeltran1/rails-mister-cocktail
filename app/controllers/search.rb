class SearchController < ApplicationController
  before_action :set_cocktail, only: %i[index]
  before_action :set_tags, only: %i[index]

  def index
    @cocktail_name = @cocktail.name
    @ingredients = @cocktail.ingredients
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
