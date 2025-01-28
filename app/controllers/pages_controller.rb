class PagesController < ApplicationController
  before_action :authenticate_user!, except: [ :home ]
  def home
  end

  def about
  end

  def tos
  end

  def privacy_policy
  end
end
