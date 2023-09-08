class SearchController < ApplicationController
  def index
    @members = MembersFacade.new.find_all_members(params[:nation])
  end
end