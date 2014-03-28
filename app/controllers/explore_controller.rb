class ExploreController < ApplicationController
  def index
    @title = t('explore.title')

    @categories = Category.with_projects.order(:name_pt).all
    @campaign_types = CampaignType.with_projects.order(:name_pt).all
  end
end
