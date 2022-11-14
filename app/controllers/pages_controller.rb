class PagesController < ApplicationController
  def home
  end

  def about
    @members = ["lola", "tomas", "mari", "marcus", "carol"]


    if params[:member]
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
  end

  def contact
  end
end
