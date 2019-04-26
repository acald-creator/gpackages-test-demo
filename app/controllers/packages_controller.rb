class PackagesController < ApplicationController
  include PackageUpdateFeeds
  before_action :set_nav
  
  def index
    redirect_to categories_path
  end
end
